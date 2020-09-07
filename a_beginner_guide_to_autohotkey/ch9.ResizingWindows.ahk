^#1::ResizeWin(600, 0)
^#2::ResizeWin(800, 600)
^#3::ResizeWin(1152, 864)
^#4::ResizeWin(1280, 600)
^#5::ResizeWin(1400, 1050)
^#6::ResizeWin(2084, 1586)

ResizeWin(Width = 0, Height = 0)
{
    WinGetPos, X, Y, W, H
    if %Width% = 0
        Width := W
    
    if %Height% = 0
        Height = H
    WinMove, A, , %X%, %Y%, %Width%, %Height%
}