^#F1:: ; Pase the current Date/Time stamp into any document
    Send, %A_Now%
    Send, %A_%
Return

^#F2:: ; Formatted Date
    FormatTime, TimeString, %A_Now%, MMMM d, yyyy
    Send, %TimeString%
Return

#^d::
    Gui, Add, MonthCal, vDayPick
    Gui, Add, Button, Default, Submit
    Gui, Show
Return

ButtonSubmit:
    Gui, Submit
    FormatTime, DayPick, %DayPick%, MMMM d, yyyy
    Send %DayPick%
    Gui Destroy
Return