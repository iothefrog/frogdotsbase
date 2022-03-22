static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"monospace:bold:pixelsize=24:antialias=true:autohint=true",	"JoyPixels:pixelsize=10:antialias=true:autohint=true"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#e6e0ed", "#2e272e" },
	[SchemeSel] = { "#e6e0ed", "#8152b7" },
	[SchemeOut] = { "#2e272e", "#2e272e" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 3;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = "   ";

/* Size of the window border */
static const unsigned int border_width = 3;
