load "ziplib.ring"

func main
	# These files are for Windows only (Linux/macOS use the system Qt)
	if not isWindows()
		return
	ok
	? "Extracting File : qml.zip"
	cDir = CurrentDir()
	chdir(exefolder()+"../bin")
	zip_extract_allfiles("qml.zip","../bin")
	remove("qml.zip")
	chdir(cDir)
