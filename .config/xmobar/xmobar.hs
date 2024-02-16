Config { overrideRedirect = False
       , font     = "Fira Code Nerd Font 11"
       , bgColor  = "#282c34"
       , fgColor  = "#ff6c6b"
       , position = TopSize L 100 24 
       , commands = [ Run Cpu
                        [ "-L", "3"
                        , "-H", "50"
                        , "--high"  , "red"
                        , "--normal", "green"
                        ] 10
                    , Run Wireless "wlan0" [ "-t", "<essid>" ] 10
                    , Run Memory ["--template", "Mem: <usedratio>%"] 10
                    , Run Volume "default" "Master" ["--template", "<status><volume>%"] 10
                    , Run Date "%a %d.%m.%Y <fc=#8be9fd>%H:%M</fc>" "date" 10
                    , Run XMonadLog
                    ]
       , sepChar  = "%"
       , alignSep = "}{"
       , template = "%XMonadLog% }{ %wlan0wi% | %cpu% | %memory% | %default:Master% | %date% "
       }

