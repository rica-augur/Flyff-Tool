Set shell = WScript.CreateObject("WScript.Shell")
target = ""

Input = InputBox("�쐬����A�J�E���g�������(1�`20)","�쐬����A�J�E���g�������:","5")
if IsNumeric(Input) = 0 or Input <= 0 or Input >= 20 then 
	MsgBox ("���͒l���s���ł�[" & Input & "]")
	WScript.Quit
end if 

For a = 1 To Input
	profile = "Flyff_Profile " + CStr(a)
	fil = profile + ".lnk"

	'�t�H���_�p�X
	strPath = "C:\Program Files (x86)\Google\Chrome\Application\"

	'�t�@�C���V�X�e���I�u�W�F�N�g�쐬
	Set objFS = CreateObject("Scripting.FileSystemObject")
	If objFS.FolderExists(strPath) Then
		'�t�H���_�����݂���ꍇ�̏���
		target = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	Else
		'�t�H���_�����݂��Ȃ��ꍇ�̏���
		target = "C:\Program Files\Google\Chrome\Application\chrome.exe"
	End If

	Set shortCut = shell.CreateShortcut(fil)
	shortCut.TargetPath = target
	shortCut.Arguments = "--profile-directory="""+ profile + """ --app=""https://universe.flyff.com/play"""
	shortCut.Save
Next


