#define PLUGIN "Server Pause Logger"
#define VERSION "1.0.0"
#define AUTHOR "Jonathan Linat"
#define URL "https://github.com/jonathanlinat"

/*
 * This plugin allows pausing and unpausing the server, logging the player's name and timestamp for each event.
 * It also logs and announces when pause/unpause is triggered via the server console.
 *
 * It has been successfully tested with AMX Mod X v1.10+.
 */

#include <amxmodx>
#include <amxmisc>

new g_pause_requester;
new Float:g_prev_pausable;
new bool:g_paused;
new bool:g_pause_allowed;
new pausable;

public plugin_init() {
    register_plugin(PLUGIN, VERSION, AUTHOR, URL);

    register_concmd("amx_pauselog", "cmd_pause", ADMIN_CVAR, "- pause or unpause the game with logging");
    register_clcmd("pauseAck", "cmd_pause_ack");

    pausable = get_cvar_pointer("pausable");
}

public cmd_pause(id, level, cid) {
    if (!cmd_access(id, level, cid, 1)) {
        return PLUGIN_HANDLED;
    }

    new name[32];
    new authid[32];
    new time_str[32];

    get_user_name(id, name, charsmax(name));
    get_user_authid(id, authid, charsmax(authid));
    get_time("%H:%M:%S", time_str, charsmax(time_str));

    if (pausable != 0) {
        g_prev_pausable = get_pcvar_float(pausable);
    }

    set_pcvar_float(pausable, 1.0);
    g_pause_allowed = true;
    g_pause_requester = id;
    client_cmd(id, "pause;pauseAck");

    if (g_paused) {
        log_amx("UNPAUSE COMMAND: %s <%s> at %s", name, authid, time_str);
        console_print(id, "[AMXX] UNPAUSE command by %s at %s", name, time_str);
    } else {
        log_amx("PAUSE COMMAND: %s <%s> at %s", name, authid, time_str);
        console_print(id, "[AMXX] PAUSE command by %s at %s", name, time_str);
    }

    return PLUGIN_HANDLED;
}

public cmd_pause_ack(id) {
    if (!g_pause_allowed) {
        return PLUGIN_CONTINUE;
    }

    new name[32];
    new authid[32];
    new time_str[32];

    get_time("%H:%M:%S", time_str, charsmax(time_str));

    if (g_pause_requester > 0 && is_user_connected(g_pause_requester)) {
        get_user_name(g_pause_requester, name, charsmax(name));
        get_user_authid(g_pause_requester, authid, charsmax(authid));
    } else {
        copy(name, charsmax(name), "Console");
        copy(authid, charsmax(authid), "N/A");
    }

    set_pcvar_float(pausable, g_prev_pausable);
    g_pause_allowed = false;
    g_paused = !g_paused;

    if (g_paused) {
        log_amx("Server PAUSED by %s <%s> at %s", name, authid, time_str);
        server_print("[AMXX] Server PAUSED by %s at %s", name, time_str);
        client_print(0, print_chat, "[AMXX] Server PAUSED by %s at %s", name, time_str);
    } else {
        log_amx("Server UNPAUSED by %s <%s> at %s", name, authid, time_str);
        server_print("[AMXX] Server UNPAUSED by %s at %s", name, time_str);
        client_print(0, print_chat, "[AMXX] Server UNPAUSED by %s at %s", name, time_str);
    }

    return PLUGIN_HANDLED;
}
