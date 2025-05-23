"Resource/UI/TeamMenu.res"
{
	"TeamMenu"
	{
		"ControlName"		"CTeamMenu"
		"fieldName"		"TeamMenu"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"637"
		"tall"		"477"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"settitlebarvisible"		"0"
		"font"			"ClassMenuDefault"
	}
	"MapInfo"
	{
		"ControlName"		"Label"
		"fieldName"		"MapInfo"
		"xpos"		"220"
		"ypos"		"120"
		"wide"		"342"
		"tall"		"270"
		"autoResize"		"3"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"maxchars"		"-1"
		"font"			"ClassMenuDefault"
	}
	"SysMenu"
	{
		"ControlName"		"Menu"
		"fieldName"		"SysMenu"
		"xpos"		"0"
		"ypos"		"0"
		"zpos"		"1"
		"wide"		"64"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"tabPosition"		"0"
		"font"			"ClassMenuDefault"
	}
	"joinTeam"
	{
		"ControlName"		"Label"
		"fieldName"		"joinTeam"
		"font"			"ClassMenuTitleFont"
		"xpos"		"64"
		"ypos"		"52"
		"wide"		"334"
		"tall"		"16"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Dod_Join_Team"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"1"
	}
	"scenario"
	{
		"ControlName"		"Label"
		"fieldName"		"scenarioLabel"
		"font"			"ClassMenuBoldFont"
		"xpos"		"222"
		"ypos"		"87"
		"wide"		"64"
		"tall"		"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Dod_Map_Label"		
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"mapname"
	{
		"ControlName"		"Label"
		"fieldName"		"mapname"
		"font"			"ClassMenuTitleFont"
		"xpos"		"284"
		"ypos"		"85"
		"wide"		"200"
		"tall"		"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"dod_anzio"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"amerbutton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"amerbutton"
		"xpos"		"66"
		"ypos"		"120"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Dod_Team_Allies"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"1"
		"Command"		"jointeam 1"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}
	"britbutton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"britbutton"
		"xpos"		"66"
		"ypos"		"120"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Dod_Team_Brits"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"1"
		"Command"		"jointeam 1"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}
	"axisbutton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"axisbutton"
		"xpos"		"66"
		"ypos"		"144"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Dod_Team_Axis"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"1"
		"Command"		"jointeam 2"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}
	"specbutton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"specbutton"
		"xpos"		"66"
		"ypos"		"168"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Cstrike_Menu_Spectate"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"Command"		"jointeam 3"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}
	"autobutton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"autobutton"
		"xpos"		"66"
		"ypos"		"192"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Cstrike_Team_AutoAssign"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"1"
		"Command"		"jointeam 5"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}

	"CancelButton"
	{
		"ControlName"		"DoDButton"
		"fieldName"		"CancelButton"
		"xpos"		"66"
		"ypos"		"240"
		"wide"		"122"
		"tall"		"18"
		"autoResize"		"0"
		"pinCorner"		"2"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#Cstrike_Cancel"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"Command"		"vguicancel"
		"Default"		"0"
		"font"			"ClassMenuDefault"
	}
	"TitleDividerBar"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"TitleDividerBar"
		"xpos"			"66"
		"ypos"			"108"
		"wide"			"496"
		"tall"			"1"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"fillcolor"		"ClassMenuDark"
		"labelText"		""
		"textAlignment"	"center"
	}
	"VertDividerBar"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"VertDividerBar"
		"xpos"			"202"
		"ypos"			"109"
		"wide"			"1"
		"tall"			"300"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"fillcolor"		"ClassMenuDark"
		"labelText"		""
		"textAlignment"	"center"
	}
	"numberOnTeam"
	{
		"ControlName"		"Label"
		"fieldName"			"numberOnTeam"
		"font"				"ClassMenuBodyFont"
		"xpos"				"220"
		"ypos"				"395"
		"wide"				"342"
		"tall"				"30"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"labelText"			"There are no players\non this team.akjshfdlkashflkashfkashd aksjdhf alksjh aksdf aksjdf kljashf klashd fkjashfd kasjhf kasjhf kjhdfs"
		"textAlignment"		"west"
		"dulltext"			"0"
		"brighttext"		"0"
	}
}
