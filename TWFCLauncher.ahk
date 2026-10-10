; Lance Texmod
Run "G:\JEUX\Activision\Transformers War for Cybertron\Binaries\Texmod.exe"

; Quand Texmod est prêt, placer la fenêtre
WinWaitActive ("TexMod")
WinMove 1000, 500

; Ouvre le menu de sélection du jeu
CoordMode "Mouse"
MouseMove 1050, 600
Click

; Sélectionne l'exécutable du jeu, ouvre le menu d'import des textures
MouseMove 1307, 720
WinWaitActive ("Select Executable")
WinMove 1050, 550
Click 4

; Sélectionner les fichiers
MouseMove 1307, 650
WinWaitActive ("Select Texmod Packages to add.")
WinMove 810, 450
Click 2
Sleep 250
Send "^a"
Send ("{Enter}")

; Lance le jeu
MouseMove 1307, 900
Sleep 2500
Click

; Ferme Texmod
Sleep 750
ProcessClose "Texmod.exe"

; Focus fenêtre du jeu
Sleep 36000
MouseMove 500, 500
Click
Sleep 250
Send ("{LWin}")
Sleep 500
Send ("{LWin}")
