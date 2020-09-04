^#8: ; make windows always on the top
    WinSet, AlwaysOnTop, toggle, A
Return

^#1::ResizeWin(600, 0)
^#2::ResizeWin(800, 600)
^#3::ResizeWin(1152, 864)
^#4::ResizeWin(1280, 600)
^#5::ResizeWin(1400, 1050)
^#6::ResizeWin(2084, 1586)

ResizeWin(Width = 0, Height = 0)
{
    WinGetPos, X, Y, W, H, A
    if %Width% = 0
        Width := W
    
    if %Height% = 0
        Height = H

    WinGetPos, X1, Y1, W1, H1, Program Manager
    X2 := (W1 - Width)/2
    Y2 := (H1 - Height)/2

    if (Width >= W1) {
        X2 = 1
        Width := W1
    }
    if (Height >= H1) {
        Y2 = 1
        Height := H1
    }

    if (X2 = 1 and Y2 = 1) {
        WinMaximize A
    }
    else
    {
        WinMove, A, , %X2%, %Y2%, %Width%, %Height%
    }
}

