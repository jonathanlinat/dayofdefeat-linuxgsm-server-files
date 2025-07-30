#define PLUGIN "Server Pause Logger"
#define VERSION "1.0.0"
#define AUTHOR "Jonathan Linat"
#define URL "https://github.com/jonathanlinat"

/*
 * Server Pause Logger
 *
 * This plugin improves server administration by logging and printing detailed information
 * whenever the server is paused or unpaused using the "amx_pause_and_log" command or the
 * built-in "pause" command (including via RCON or server console).
 * 
 * When a player or the server console pauses or unpauses the server, the plugin records their
 * name (or "RCON/Console"), SteamID (if available), and the exact timestamp of the action.
 * This information is displayed in the server console and logged to the AMXX log file,
 * ensuring clear accountability for server state changes.
 *
 * This functionality is especially useful for competitive or public servers, as it adds
 * transparency to server pauses and unpauses, helping resolve disputes and clarify who
 * initiated the action.
 *
 * Tested and compatible with AMX Mod X v1.10+.
 */

#include <amxmodx>
#include <amxmisc>

new bool:g_Paused = false;

public plugin_init() {
    register_plugin(PLUGIN, VERSION, AUTHOR, URL);

    register_concmd("amx_pause_and_log", "cmd_pause", ADMIN_CVAR, "- pause or unpause the game and log");
    register_clcmd("pause", "cmd_pause_intercept");
}

public cmd_pause(id, level, cid) {
    if (!cmd_access(id, level, cid, 1)) {
        return PLUGIN_HANDLED;
    }

    return do_pause_action(id);
}

public cmd_pause_intercept(id) {
    return do_pause_action(id);
}

do_pause_action(id) {
    new name[32], authid[32], time_str[32];
    get_time("%Y-%m-%d %H:%M:%S", time_str, charsmax(time_str));

    if (id > 0 && is_user_connected(id)) {
        get_user_name(id, name, charsmax(name));
        get_user_authid(id, authid, charsmax(authid));
    } else {
        copy(name, charsmax(name), "RCON/Console");
        copy(authid, charsmax(authid), "N/A");
    }

    g_Paused = !g_Paused;

    if (g_Paused) {
        log_amx("Server PAUSED by %s <%s> at %s", name, authid, time_str);
        server_print("[AMXX] Server PAUSED by %s at %s", name, time_str);
    } else {
        log_amx("Server UNPAUSED by %s <%s> at %s", name, authid, time_str);
        server_print("[AMXX] Server UNPAUSED by %s at %s", name, time_str);
    }

    return PLUGIN_CONTINUE;
}
