::--Settings
	@echo off
		color 03
			call %~d0\programmierung\dev\var.bat
    ::goto skip    
                taskkill /F /IM explorer.exe
                    cls 
                        start "Backup"
    ::-:skip                    
                            title ## ENTER %real_name%s Desktop PASSWORD ## 
                                goto startofmenu 
::--Infos
    :info
        cls 
        	@echo ___________________________________________________________________
	        @echo ##This Batch file is written by "%online_name%" alias "%real_name%"##
    	    @echo ___________________________________________________________________
                ping -n 3 localhost >NUL 
                    goto startofmenu 
::--Start
    :startofmenu
::--Time
	@echo ############
	@echo %time%
	@echo ############
	@echo.
::***********************************************************************
    :pw
        color 03
        @echo ##################################
        @echo ## Enter The Desktop - Password ##
        @echo ##################################
        @echo.
        SET /P Input=Enter Password:
        IF /I "%Input%"=="info" goto info
        IF /I "%Input%"=="%backdoor%" goto dev_access
        IF /I "%Input%"=="%passwort%" goto true	
            goto false 
::--False
    :false
        color 04
            ping -n 1 localhost >NUL
                @echo.
                @echo ###################
                @echo ## ACCESS DENIED ##
                @echo ###################
                @echo.
                ping -n 2 localhost >NUL
                @echo ERROR, Please Try Again!
                @echo.
                ping -n 3 localhost >NUL
                    goto pw 
::--Dev.
    :dev_access
        @echo.
        @echo ###########################
        @echo ## Emergency Unlock Used ##
        @echo ###########################
            goto true
::--True
    :true
        color 02
            ping -n 1 localhost >NUL 
                @echo.
                @echo ####################
                @echo ## ACCESS GRANTED ##
                @echo ####################
                @echo.
                @echo Desktop Loading,... Please Wait
                    ping -n 5 localhost >NUL
                        start explorer.exe
                            ping -n 2 localhost >NUL
                                start E:\programmierung\dev\systemstart\win_start_profile.bat
                                    exit 
        