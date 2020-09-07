^u:: ; CTRL+U converts text to upper
    Clipboard := ""
    Send, ^c ; copies selected text
    ClipWait
    StringUpper Clipboard, Clipboard
    Send %Clipboard%
Return

^l:: ; CTRL+U converts text to lower
    Clipboard := ""
    Send, ^c ; copies selected text
    ClipWait
    StringLower Clipboard, Clipboard
    Send %Clipboard%
Return

+^k:: ; SHIFT+CTRL+K converts text to capitalized
    Clipboard := ""
    Send, ^c ; copies selected text
    ClipWait
    StringUpper Clipboard, Clipboard, T
    Send %Clipboard%
Return
