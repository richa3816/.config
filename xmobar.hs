Config { overrideRedirect = False
  , lowerOnStart	= True
  , font		= "FreeMono 11"
  , bgColor		= "#000000"
  , fgColor		= "#FFFFFF"
  , position		= TopW L 100
  , commands		= [ Run Date "%Y-%m-%d %H:%M" "date" 10
  			  , Run Cpu
			    [ "-L"		, "3"
			    , "-H"		, "50"
			    , "--high"		, "red"
			    , "--normal"	, "green"
			    ] 10
			  , Run Memory ["--template", "RAM: <usedratio>%" ] 10
			  , Run Swap [] 10
			  ]
  , sepChar		= "%"
  , alignSep		= "}{"
  , template		= "} %date% { %cpu% | %memory% | %swap% "
}
