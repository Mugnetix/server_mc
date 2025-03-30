@echo OFF
:start
    "C:\Java\adoptiumjdk-21.0.5+11-jre\bin\java.exe" -Xms8G -Xmx8G -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:-ZUncommit -XX:+ParallelRefProcEnabled -Xlog:async @libraries/net/minecraftforge/forge/1.19.2-43.4.0/win_args.txt nogui
    rem SET /p should_restart=<./auto_restart/restart
	SET /p should_restart=0
    if %should_restart% EQU 0 goto stop
    echo If you want to stop the server completely, press Ctrl-C, \before the countdown is at 1!
    echo Rebooting in:
    timeout /T 5 /nobreak
    echo 'Server restarts!'
    goto start
:stop