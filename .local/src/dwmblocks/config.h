//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"| ", "sb-name", 1, 0},
	{"",	"sb-music",	1,	11},
	{"", "sb-uptime", 10, 0},
	 {"",	"sb-memory",	1,	14}, 
	 // {"",	"sb-nettraf",	1,	16},
	{"",	"sb-volume",	2,	10},
	// {"",	"sb-battery",	5,	3},
	{"",	"sb-clock",	10,	1,},
	// {"",	"sb-internet",	5,	4},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " | ";
