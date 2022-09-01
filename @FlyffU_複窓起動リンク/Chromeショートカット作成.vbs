Set shell = WScript.CreateObject("WScript.Shell")
target = ""

Input = InputBox("作成するアカウント数を入力(1～20)","作成するアカウント数を入力:","5")
if IsNumeric(Input) = 0 or Input <= 0 or Input >= 20 then 
	MsgBox ("入力値が不正です[" & Input & "]")
	WScript.Quit
end if 

For a = 1 To Input
	profile = "Flyff_Profile " + CStr(a)
	fil = profile + ".lnk"

	'フォルダパス
	strPath = "C:\Program Files (x86)\Google\Chrome\Application\"

	'ファイルシステムオブジェクト作成
	Set objFS = CreateObject("Scripting.FileSystemObject")
	If objFS.FolderExists(strPath) Then
		'フォルダが存在する場合の処理
		target = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	Else
		'フォルダが存在しない場合の処理
		target = "C:\Program Files\Google\Chrome\Application\chrome.exe"
	End If

	Set shortCut = shell.CreateShortcut(fil)
	shortCut.TargetPath = target
	shortCut.Arguments = "--profile-directory="""+ profile + """ --app=""https://universe.flyff.com/play"""
	shortCut.Save
Next


