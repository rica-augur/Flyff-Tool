Set shell = WScript.CreateObject("WScript.Shell")


For a = 1 To 5
profile = "プロファイル" + CStr(a)
fil = profile + ".lnk"

Set shortCut = shell.CreateShortcut(fil)
shortCut.TargetPath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
shortCut.Arguments = "--profile-directory="""+ profile + """ ""https://universe.flyff.com/play"""
shortCut.Save


Next


