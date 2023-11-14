@echo off
setlocal enabledelayedexpansion

:: Liste des serveurs à tester
set "servers=google.com amazon.com localhost"

:: Parcourir la liste des serveurs
for %%s in (%servers%) do (
    echo Testing %%s...
    
    :: Ouvrir une nouvelle fenêtre de commande pour le serveur avec la commande ping -t
    start cmd /k "ping -t %%s"
    
    echo ==============================
)

:end
