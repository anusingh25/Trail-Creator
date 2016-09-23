#include <File.au3>
#include <GuiEdit.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <array.au3>
#Include <GuiStatusBar.au3>
HotKeySet("{ESC}", "close")
#Region ### START Koda GUI section ### Form=\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Util\Trail Creator v1\Form1.kxf
const $h=972,$W=644,$x=@DesktopWidth*.4325,$y=@DesktopHeight*0.02
$Form1 = GUICreate(StringReplace(@ScriptName,".au3",""), $w+50, $h, $x, $y)
GUISetIcon("\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Icon\trail.ico")
$Edit1 = GUICtrlCreateEdit("", 8, 32, 673, 273)
$file = FileOpen(@ScriptDir & "\Start Part.dat", 0)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Start File.")
   EndIf
GUICtrlSetData(-1,FileRead($file))
fileclose($file)
$Label1 = GUICtrlCreateLabel("Enter Starting Part:", 8, 8, 93, 17)
$Label2 = GUICtrlCreateLabel("Enter Repeating Part:", 8, 320, 106, 17)
$Edit2 = GUICtrlCreateEdit("", 7, 340, 600, 400)
$add0= GUICtrlCreateButton("Intialization", 610, 340, 80, 40, $WS_GROUP)
$add2= GUICtrlCreateButton("Set Working Dir", 610, 390, 80, 40, $WS_GROUP)
$add3 = GUICtrlCreateButton("File Open", 610, 440, 80, 40, $WS_GROUP)
$add4 = GUICtrlCreateButton("Close File", 610, 490, 80, 40, $WS_GROUP)
$add5 = GUICtrlCreateButton("Erase", 610, 540, 80, 40, $WS_GROUP)
$file = FileOpen(@ScriptDir & "\Repeat Part.dat", 0)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Start File.")
   EndIf
GUICtrlSetData($Edit2,FileRead($file))
fileclose($file)
$add1 = GUICtrlCreateButton("Enter Range", 8, 770, 100, 20, $WS_GROUP)
$Input1 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","String",""), 144, 753, 540, 21)
$Label3 = GUICtrlCreateLabel("Enter String To Generate:", 8, 753, 125, 17)
;$Label4 = GUICtrlCreateLabel("Enter Range:", 8, 792, 67, 17)
;$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String",""), 143, 788, 529, 21)
;$Input3 = GUICtrlCreateInput("", 120, 886, 105, 21)
;$Label7 = GUICtrlCreateLabel("Enter Range:", 8, 810, 67, 17)
;$Input4 = GUICtrlCreateInput("", 143, 810, 529, 21)
;$Label5 = GUICtrlCreateLabel("Number of times", 8, 886, 80, 17)
$Combo1 = GUICtrlCreateCombo("Comma Sep", 615, 670,80, 25)
GUICtrlSetData(-1, "Range") 
$Label6 = GUICtrlCreateLabel("Method:", 615, 650, 43, 17)
$Button1 = GUICtrlCreateButton("Start", 48, 924, 209, 25, $WS_GROUP)
$Button2 = GUICtrlCreateButton("Close", 397, 924, 209, 25, $WS_GROUP)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1)
_GUICtrlStatusBar_SetMinHeight($StatusBar1, 20)
local $trackmenu = GuiCtrlCreateContextMenu ()
	local $help = GuiCtrlCreateMenuitem ("Help",$trackmenu)
	GuiCtrlCreateMenuitem ("",$trackmenu)
	Local $aboutitem = GuiCtrlCreateMenuitem ("About",$trackmenu)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	If $nmsg = $help Then Msgbox(0,"Help","No Help Included")
		If $nmsg = $aboutitem Then about()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $add0
				add(2,3)
				case $add2
				add(5,12)
				case $add3
				add(14,25)
				case $add4
				add(27,37)
				case $add5
				add(39,48)
		Case $add1
			local $str = GUICtrlRead($input1)
				local $astr = StringSplit($str,",")
;_ArrayDisplay($astr)
if ubound($astr)-1 > 6 then 
	msgbox(4096,"Result","Only six Feilds are allowed")
EndIf			
switch UBound($astr)-1
			case 1
;				msgbox(4096,"Result","case 1 1")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
case 2
;	msgbox(4096,"Result","case 1 2")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
$Label7 = GUICtrlCreateLabel("Enter Range 2:", 8, 810, 76, 17)
$Input4 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String2",""), 143, 810, 540, 21)
case 3
;	msgbox(4096,"Result","case 1 3")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
$Label7 = GUICtrlCreateLabel("Enter Range 2:", 8, 810, 76, 17)
$Input4 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String2",""), 143, 810, 540, 21)
$Label8 = GUICtrlCreateLabel("Enter Range 3:", 8, 830, 76, 17)
$Input5 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String3",""), 143, 830, 540, 21)
case 4
;	msgbox(4096,"Result","case 1 4")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
$Label7 = GUICtrlCreateLabel("Enter Range 2:", 8, 810, 76, 17)
$Input4 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String2",""), 143, 810, 540, 21)
$Label8 = GUICtrlCreateLabel("Enter Range 3:", 8, 830, 76, 17)
$Input5 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String3",""), 143, 830, 540, 21)
$Label9 = GUICtrlCreateLabel("Enter Range 4:", 8, 850, 76, 17)
$Input6 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String4",""), 143, 850, 540, 21)
case 5
;	msgbox(4096,"Result","case 1 4")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
$Label7 = GUICtrlCreateLabel("Enter Range 2:", 8, 810, 76, 17)
$Input4 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String2",""), 143, 810, 540, 21)
$Label8 = GUICtrlCreateLabel("Enter Range 3:", 8, 830, 76, 17)
$Input5 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String3",""), 143, 830, 540, 21)
$Label9 = GUICtrlCreateLabel("Enter Range 4:", 8, 850, 76, 17)
$Input6 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String4",""), 143, 850, 540, 21)
$Label10 = GUICtrlCreateLabel("Enter Range 5:", 8, 870, 76, 17)
$Input7 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String5",""), 143, 870, 540, 21)
case 6
;	msgbox(4096,"Result","case 1 4")
$Label4 = GUICtrlCreateLabel("Enter Range 1:", 8, 792, 76, 17)
$Input2 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String1",""), 143, 790, 540, 21)
$Label7 = GUICtrlCreateLabel("Enter Range 2:", 8, 810, 76, 17)
$Input4 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String2",""), 143, 810, 540, 21)
$Label8 = GUICtrlCreateLabel("Enter Range 3:", 8, 830, 76, 17)
$Input5 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String3",""), 143, 830, 540, 21)
$Label9 = GUICtrlCreateLabel("Enter Range 4:", 8, 850, 76, 17)
$Input6 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String4",""), 143, 850, 540, 21)
$Label10 = GUICtrlCreateLabel("Enter Range 5:", 8, 870, 76, 17)
$Input7 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String5",""), 143, 870, 540, 21)
$Label11 = GUICtrlCreateLabel("Enter Range 6:", 8, 890, 76, 17)
$Input8 = GUICtrlCreateInput(IniRead("sysTrail.ini","sec","Replace String6",""), 143, 890, 540, 21)
EndSwitch
				
		Case $button2
				
				Exit
			Case $button1
				if not IsDeclared("Input2") then 
					msgbox(4096,"Error","Press Button Enter Range and Enter Ranges")
					ContinueCase
				EndIf
				local $opt = GUICtrlRead($combo1) 
switch $opt
case "Range"
	global $rep1 =STRING(GUICtrlRead($input2))
	if StringRegExp($rep1,"-")=0 then 
		msgbox(48,"Error","Range should be numeric in format `xxx-yyy` eg `1011-1020`")
		
		EndIf
	Global $arep1 = StringSplit($rep1,"-")
;msgbox(4096,"sds",$arep1[1] & " " & $arep1[2])
case "Comma Sep"
	
switch UBound($astr)-1
case 1
;msgbox(4096,"Result","case 2 1")
global $rep1 =GUICtrlRead($input2)
global	$arep1 = StringSplit($rep1,",")
case 2
;	msgbox(4096,"Result","case 2 2")
global $rep1 =GUICtrlRead($input2)
global $rep2 =GUICtrlRead($input4)
global	$arep1 = StringSplit($rep1,",")
global $arep2 = StringSplit($rep2,",")
case 3
;	msgbox(4096,"Result","case 2 3")
global $rep1 =GUICtrlRead($input2)
global $rep2 =GUICtrlRead($input4)
global $rep3 =GUICtrlRead($input5)
global $arep1 = StringSplit($rep1,",")
global $arep2 = StringSplit($rep2,",")
global $arep3 = StringSplit($rep3,",")
case 4
;	msgbox(4096,"Result","case 2 4")
global $rep1 =GUICtrlRead($input2)
global $rep2 =GUICtrlRead($input4)
global $rep3 =GUICtrlRead($input5)
global $rep4 =GUICtrlRead($input6)
global $arep1 = StringSplit($rep1,",")
global $arep2 = StringSplit($rep2,",")
global $arep3 = StringSplit($rep3,",")
global $arep4 = StringSplit($rep4,",")
case 5
;	msgbox(4096,"Result","case 2 4")
global $rep1 =GUICtrlRead($input2)
global $rep2 =GUICtrlRead($input4)
global $rep3 =GUICtrlRead($input5)
global $rep4 =GUICtrlRead($input6)
global $rep5 =GUICtrlRead($input7)
global $arep1 = StringSplit($rep1,",")
global $arep2 = StringSplit($rep2,",")
global $arep3 = StringSplit($rep3,",")
global $arep4 = StringSplit($rep4,",")
global $arep5 = StringSplit($rep5,",")
case 6
;	msgbox(4096,"Result","case 2 4")
global $rep1 =GUICtrlRead($input2)
global $rep2 =GUICtrlRead($input4)
global $rep3 =GUICtrlRead($input5)
global $rep4 =GUICtrlRead($input6)
global $rep5 =GUICtrlRead($input7)
global $rep6 =GUICtrlRead($input8)
global $arep1 = StringSplit($rep1,",")
global $arep2 = StringSplit($rep2,",")
global $arep3 = StringSplit($rep3,",")
global $arep4 = StringSplit($rep4,",")
global $arep5 = StringSplit($rep5,",")
global $arep6 = StringSplit($rep6,",")
EndSwitch
EndSwitch				
local $char1=GUICtrlRead($edit1)
local $char2=GUICtrlRead($edit2)
;msgbox(4096,"Values",$char1 & @CRLF & $char2 & @CRLF & $str & @CRLF &$rep & @CRLF &$n & @CRLF &$opt) 
local $trycountg=0
_FileCreate(@DesktopDir & "\test.txt")
$file = FileOpen(@DesktopDir & "\test.txt", 2)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open file.")
  Exit
EndIf
FileWrite($file, $char1 & @CRLF)
switch $opt
case "Range"
	;if StringRegExp($rep1,"-")=0 then 
;		msgbox(48,"Error","Range should be numeric in format `xxx-yyy` eg `1011-1020`")
;		ContinueCase
;		EndIf
;_ArrayDisplay($arep1)
$len=StringLen($arep1[2])

local $arr[$arep1[2]-$arep1[1]+1]
For $k =$arep1[1] to $arep1[2]
	$arr[$k-$arep1[1]]=$k
	
	for $j=1 to $len-stringlen($arr[$k-$arep1[1]])
	$arr[$k-$arep1[1]]='0' & $arr[$k-$arep1[1]]
Next
Next
;_ArrayDisplay($arr)
for $i = $arep1[1] to $arep1[2] step 1
FileWrite($file,StringReplace($char2,$astr[1],$arr[$i-$arep1[1]]))
;MsgBox(4096,"iteration",StringReplace($char2,$str,$i))
$trycountg+=1
_GUICtrlStatusBar_SetText($StatusBar1, "Tried " & $trycountg & " time(s)     Press ESC to Exit")
Next

case "Comma Sep"
	;_ArrayDisplay($arep1)
		For $i=1 to Ubound($arep1)-1 step 1
	switch ubound($astr)-1
	case 1
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
FileWrite($file,$towrite1)
case 2
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
	FileWrite($file,StringReplace($towrite1,STRING($astr[2]),STRING($arep2[$i])))
	IniWrite("sysTrail.ini","sec","Replace String2",GUICtrlRead($input4))
case 3
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
	local $towrite2 = StringReplace($towrite1,STRING($astr[2]),STRING($arep2[$i]))
	FileWrite($file,StringReplace($towrite2,STRING($astr[3]),STRING($arep3[$i])))
	IniWrite("sysTrail.ini","sec","Replace String2",GUICtrlRead($input4))
	IniWrite("sysTrail.ini","sec","Replace String3",GUICtrlRead($input5))
case 4
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
	local $towrite2 = StringReplace($towrite1,STRING($astr[2]),STRING($arep2[$i]))
	local $towrite3 = StringReplace($towrite2,STRING($astr[3]),STRING($arep3[$i]))
	FileWrite($file,StringReplace($towrite3,STRING($astr[4]),STRING($arep4[$i])))
	IniWrite("sysTrail.ini","sec","Replace String2",GUICtrlRead($input4))
	IniWrite("sysTrail.ini","sec","Replace String3",GUICtrlRead($input5))
IniWrite("sysTrail.ini","sec","Replace String4",GUICtrlRead($input6))
case 5
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
	local $towrite2 = StringReplace($towrite1,STRING($astr[2]),STRING($arep2[$i]))
	local $towrite3 = StringReplace($towrite2,STRING($astr[3]),STRING($arep3[$i]))
	local $towrite4 = StringReplace($towrite3,STRING($astr[4]),STRING($arep4[$i]))
	FileWrite($file,StringReplace($towrite4,STRING($astr[5]),STRING($arep5[$i])))
	IniWrite("sysTrail.ini","sec","Replace String2",GUICtrlRead($input4))
	IniWrite("sysTrail.ini","sec","Replace String3",GUICtrlRead($input5))
IniWrite("sysTrail.ini","sec","Replace String4",GUICtrlRead($input6))
IniWrite("sysTrail.ini","sec","Replace String4",GUICtrlRead($input7))
case 6
	local $towrite1 = StringReplace($char2,STRING($astr[1]),STRING($arep1[$i]))
	local $towrite2 = StringReplace($towrite1,STRING($astr[2]),STRING($arep2[$i]))
	local $towrite3 = StringReplace($towrite2,STRING($astr[3]),STRING($arep3[$i]))
	local $towrite4 = StringReplace($towrite3,STRING($astr[4]),STRING($arep4[$i]))
	local $towrite5 = StringReplace($towrite4,STRING($astr[5]),STRING($arep5[$i]))
	FileWrite($file,StringReplace($towrite5,STRING($astr[6]),STRING($arep6[$i])))
	IniWrite("sysTrail.ini","sec","Replace String2",GUICtrlRead($input4))
	IniWrite("sysTrail.ini","sec","Replace String3",GUICtrlRead($input5))
IniWrite("sysTrail.ini","sec","Replace String4",GUICtrlRead($input6))
IniWrite("sysTrail.ini","sec","Replace String5",GUICtrlRead($input7))
IniWrite("sysTrail.ini","sec","Replace String6",GUICtrlRead($input8))
EndSwitch
;MsgBox(4096,"iteration",StringReplace($char2,$str,$arep[$i]))
$trycountg+=1
_GUICtrlStatusBar_SetText($StatusBar1, "Tried " & $trycountg & " time(s)     Press ESC to Exit")
Next
EndSwitch
FileClose($file)
;MsgBox(4096,"Done","Trail file "& "'" & "test" &  ".txt" & "'" &" is " & "created on desktop")
end()
IniWrite("sysTrail.ini","sec","String",GUICtrlRead($input1))
	IniWrite("sysTrail.ini","sec","Replace String1",GUICtrlRead($input2))
_FileCreate(@ScriptDir & "\Start Part.dat")
$file = FileOpen(@ScriptDir & "\Start Part.dat", 2)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Start File.")
    Exit
EndIf
FileWrite($file,$char1)
fileclose($file)				
_FileCreate(@ScriptDir & "\Repeat Part.dat")
$file = FileOpen(@ScriptDir & "\Repeat Part.dat", 2)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Repeat File.")
    Exit
EndIf
FileWrite($file,$char2)
fileclose($file)
EndSwitch
WEnd

Func close()
    Exit 0
EndFunc

func add($a,$b)
	local $addchar0
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form10 = GUICreate("Input Option", 331, 93, $x+300, $y+250)
GUISetIcon("\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Icon\trail.ico")
$start = GUICtrlCreateButton("&Start Part", 25, 51, 75, 25, $WS_GROUP)
$repeat = GUICtrlCreateButton("&Repeat Part", 128, 51, 75, 25, $WS_GROUP)
$Label1 = GUICtrlCreateLabel("Where to Enter?", 24, 16, 141, 28)
GUICtrlSetFont(-1, 14, 400, 0, "MS Sans Serif")
$Button30 = GUICtrlCreateButton("Cancel", 232, 51, 75, 25, $WS_GROUP)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $start
			$file = FileOpen(@ScriptDir & "\Ref.dat", 0)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Ref File.")
    Exit
EndIf
for $i = $a to $b step 1
$addchar0=$addchar0 & @crlf &Filereadline($file,$i)
Next
fileclose($file)
_GUICtrlEdit_AppendText($Edit1,$addchar0)
case $repeat
			$file = FileOpen(@ScriptDir & "\Ref.dat", 0)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open Ref File.")
    Exit
EndIf
for $i = $a to $b step 1
local $addchar0=$addchar0 & @crlf & Filereadline($file,$i)
Next
fileclose($file)
_GUICtrlEdit_AppendText($Edit2,$addchar0)
	case $button30
		guidelete($form10)
		ExitLoop
			
			
	EndSwitch
WEnd
EndFunc

func end()
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form4 = GUICreate("Done, What Next?", 332, 113, $x+200, $y+300)
GUISetIcon("\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Icon\trail.ico")
GUISetFont(8, 800, 0, "MS Sans Serif")
$Button21 = GUICtrlCreateButton("&OK", 49, 85, 75, 25, $WS_GROUP)
$Button22 = GUICtrlCreateButton("&Cancel", 194, 85, 75, 25, $WS_GROUP)
$Checkbox21 = GUICtrlCreateCheckbox("Show Trail File", 12, 38, 105, 17)
$Checkbox22 = GUICtrlCreateRadio("Run Trail File in Proe (Invisible)", 126, 38, 197, 17)
$Checkbox23 = GUICtrlCreateRadio("Run Trail Eile in Proe (Visible)", 126, 58, 197, 17)
$Label1 = GUICtrlCreateLabel("Trail file `test.txt` is created on desktop", 8, 8, 320, 24)
GUICtrlSetFont(-1, 12, 800, 0, "MS Sans Serif")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $checkbox22
			GUICtrlSetState($checkbox23, $GUI_UNCHECKED)
      
            Case $checkbox23
                GUICtrlSetState($checkbox22, $GUI_UNCHECKED)

		case $Button21
			 if GUICtrlRead($checkbox21)=$GUI_CHECKED and GUICtrlRead($checkbox22)=$GUI_CHECKED then
					ShellExecutewait("test.txt","",@DesktopDir,"edit")
					ShellExecutewait('"'&IniRead("sysTrail.ini","sec","Proe Path","")&'"',' '&IniRead("sysTrail.ini","sec","Startup Parameter","")& ' "'&@DesktopDir &  '\test.txt"',IniRead("sysTrail.ini","sec","Startup Directory",""))
			elseif GUICtrlRead($checkbox21)=$GUI_CHECKED and GUICtrlRead($checkbox23)=$GUI_CHECKED then
					ShellExecutewait("test.txt","",@DesktopDir,"edit")
					ShellExecutewait('"'&IniRead("sysTrail.ini","sec","Proe Path","")&'"',' "'&@DesktopDir &  '\test.txt"',IniRead("sysTrail.ini","sec","Startup Directory",""))
			ElseIf GUICtrlRead($checkbox22)=$GUI_CHECKED and GUICtrlRead($checkbox21)=$GUI_UNCHECKED then
					ShellExecutewait('"'&IniRead("sysTrail.ini","sec","Proe Path","")&'"',' '&IniRead("sysTrail.ini","sec","Startup Parameter","")& ' "'&@DesktopDir &  '\test.txt"',IniRead("sysTrail.ini","sec","Startup Directory",""))
			ElseIf GUICtrlRead($checkbox23)=$GUI_CHECKED and GUICtrlRead($checkbox21)=$GUI_UNCHECKED then
					ShellExecutewait('"'&IniRead("sysTrail.ini","sec","Proe Path","")&'"',' "'&@DesktopDir &  '\test.txt"',IniRead("sysTrail.ini","sec","Startup Directory",""))
			elseif  GUICtrlRead($checkbox21)=$GUI_CHECKED and GUICtrlRead($checkbox22)=$GUI_UNCHECKED then
					ShellExecute("test.txt","",@DesktopDir,"edit")
			endif
				guidelete($Form4)
			 	ExitLoop
		Case $Button22
				guidelete($Form4)
				ExitLoop
	EndSwitch
WEnd

EndFunc


func about()
	Local $Form3 = GUICreate("About", 324, 241, $x+200, $y+300)
local $WS_GROUP,$SS_NOTIFY,$WS_CLIPSIBLINGS
GUISetIcon("\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Icon\trail.ico")
Local	$GroupBox1 = GUICtrlCreateGroup("", 8, 8, 305, 185)
	Local $Label1 = GUICtrlCreateLabel("Product Name :"& StringLeft(@ScriptName,13), 144, 24, 150, 17, $WS_GROUP)
	Local $Label2 = GUICtrlCreateLabel("Version : "& Stringmid(@ScriptName,16,1), 144, 48, 60, 17, $WS_GROUP)
	Local $Label4 = GUICtrlCreateLabel("Comments : Use It With Little Care.", 16, 160, 168, 17, $WS_GROUP)
Local	$Label3 = GUICtrlCreateLabel("Copyright: It's Free (Happy To Help)", 16, 136, 172, 17, $WS_GROUP)
	Local $Label5 = GUICtrlCreateLabel("Developed By :  ", 144, 72, 83, 17)
Local	$Label6 = GUICtrlCreateLabel("£ÃŽÝ BØ¥§", 144, 96, 132, 37)
	GUICtrlSetFont(-1, 22, 400, 2, "Arial Narrow")
Local	$Pic1 = GUICtrlCreatePic("\\eeswkct092\JLG\JLG_Axle_RE\Users\Anand\Anand_Backup\autoit\Working\Icon\trail.jpeg", 16, 24, 100, 100, BitOR($SS_NOTIFY,$WS_GROUP,$WS_CLIPSIBLINGS))
	GUICtrlCreateGroup("", -99, -99, 1, 1)
Local	$Button1 = GUICtrlCreateButton("&OK", 132, 208, 75, 25)
	GUISetState(@SW_SHOW)
While 1
	local $nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
		guidelete($Form3)
		ExitLoop
		Case $Button1
		guidelete($Form3)
		ExitLoop
	EndSwitch
WEnd
EndFunc