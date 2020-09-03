#w:: ; change all website to web site from the clipboard
    StringReplace, Clipboard, Clipboard, website , web site, All
Return

#s:: ; remove double space after a period from the clipboard content
    Loop {
        StringReplace, clipboard, clipboard, .%A_Space%%A_Space%, .%A_Space%, All, UseErrorLevel
        if ErrorLevel = 0 ; inicates no more replacements need
            Break
    }
Return 
