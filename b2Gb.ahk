gig = 1073741824

; throw away commas
StringReplace, fmtinput, clipboard, `,,, All

; don't process garbage
if fmtinput is integer
{
    ; to two significant digits
    SetFormat, Float, 0.2
    gb := fmtinput / gig
    clipboard = %gb%
} else
{ 
    MsgBox, %fmtinput% is not an integer
}
