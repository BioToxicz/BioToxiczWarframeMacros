toggle = 0
#MaxThreadsPerHotkey 2
PrintNum = 0

; F5 Starts macro F10 to refresh/stop

NumberOfTexts = 10 ; how many differant strings you have (if you want more than 10 dont forget to add it as a case)
delay = 120000 ; default 120000 (2 mins)

1 = One
2 = Two
3 = Three
4 = Four
5 = Five
6 = Six
7 = Seven
8 = Eight
9 = Nine
10 = Ten


Output = %Rand%

F5::
Toggle :=!Toggle
While Toggle{

PrintNum++

; send %PrintNum%
; SendInput {space}

if PrintNum > %NumberOfTexts%
{
PrintNum = 1
}

Switch PrintNum{
case 1: Output = %1%
case 2: Output = %2%
case 3: Output = %3%
case 4: Output = %4%
case 5: Output = %5%
case 6: Output = %6%
case 7: Output = %7%
case 8: Output = %8%
case 9: Output = %9%
case 10: Output = %10%
}
; send %PrintNum%
; SendInput {enter}
send %Output%
SendInput {enter}

sleep, %delay%
}
return


F10::Reload 