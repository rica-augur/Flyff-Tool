Set shell = WScript.CreateObject("WScript.Shell")

Input = InputBox("�쐬����A�J�E���g�������(1�`20)","�쐬����A�J�E���g�������:","5")
if IsNumeric(Input) = 0 or Input <= 0 or Input >= 20 then 
	MsgBox ("���͒l���s���ł�[" & Input & "]")
	WScript.Quit
end if 

For a = 1 To Input
	profile = "�v���t�@�C��" + CStr(a)
	fil = profile + ".lnk"
	
	Set shortCut = shell.CreateShortcut(fil)
	shortCut.TargetPath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
	shortCut.Arguments = "--profile-directory="""+ profile + """ ""https://universe.flyff.com/play"""
	shortCut.Save
Next


