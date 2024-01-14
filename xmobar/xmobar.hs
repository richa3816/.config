Config { overrideRedirect = False
  , lowerOnStart	= True
  , font		= "FreeMono 11"
  , bgColor		= "#000000"
  , fgColor		= "#FFFFFF"
  , position		= TopW L 100
  , commands		= [ Run Date "%F %T" "date" 10
  			  , Run Cpu
			    [ "--template"	, "CPU <total>%"
			    , "--Low"		, "3"
			    , "--High"		, "50"
			    , "--low"		, "#CAD3F5"
			    , "--normal"	, "#CAD3F5"
			    , "--high"		, "#ED8796"
			    ] 10
			  , Run Memory ["--template", "RAM <usedratio>%" ] 10
			  , Run Swap ["--template",	"SWAP <usedratio>%"] 10
			  , Run Battery
			    [ "--template"	, "BAT <acstatus>"
			    , "--Low"		, "20"
			    , "--High"		, "80"
			    , "--low"		, "#ED8796"
			    , "--normal"	, "#CAD3F5"
			    , "--high"		, "#A6DA95"
			    , "--"
			      , "-o"		, "<left>%-"
			      , "-O"		, "<left>%+"
			      , "-i"		, "<left>%p"
			    ] 50
			  ]
  , sepChar		= "%"
  , alignSep		= "}{"
  , template		= " %date% } { %cpu% %memory% %swap% %battery% "
}
