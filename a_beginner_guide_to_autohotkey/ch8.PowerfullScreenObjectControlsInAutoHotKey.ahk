^#w:: ; just open a window with Ok button . click Ok button, no action is invoked
    Gui, Add, Button, Default, Ok
    Gui, Show
Return

^#g:: ; launch google
    Gui, Font, underline
    Gui, Add, Text, cBlue gLaunchGoogle, Click here to launch Google
    Gui, Font, Norm
    Gui, Show
Return

LaunchGoogle:
    Run, www.google.com
Return

^#E:: ; simple inputbox that asks for first name and last name
    Gui, Add, Text, ,First name:
    Gui, Add, Edit, w200 vFirstName ym ; the ym positioning option starts a new column.
    Gui, Add, Text, , Last name:
    Gui, Add, Edit, w200 vLastName
    Gui, Add, button, Default, OK
    Gui, Show , , simple input example
Return ; the script is idle until the user does something;

ButtonOK:
    Gui, Submit ; save the input from the user to each associated variable.
    MsgBox, You Entered "%FirstName% %LastName%".
ExitApp