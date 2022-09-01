Set shell = WScript.CreateObject("WScript.Shell")

Input = InputBox("作成するアカウント数を入力(1～20)","作成するアカウント数を入力:","5")
if IsNumeric(Input) = 0 or Input <= 0 or Input >= 20 then 
	MsgBox ("入力値が不正です[" & Input & "]")
	WScript.Quit
end if 

For a = 1 To Input
	profile = "プロファイル" + CStr(a)
	fil = profile + ".lnk"
	
	Set shortCut = shell.CreateShortcut(fil)
	shortCut.TargetPath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
	shortCut.Arguments = "--profile-directory="""+ profile + """ ""https://universe.flyff.com/play"""
	shortCut.Save
Next


