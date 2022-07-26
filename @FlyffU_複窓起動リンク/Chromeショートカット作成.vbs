Set shell = WScript.CreateObject("WScript.Shell")
target = ""

For a = 1 To 5
profile = "Profile " + CStr(a)
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
shortCut.Arguments = "--profile-directory="""+ profile + """ ""https://universe.flyff.com/play"""
shortCut.Save

Next


