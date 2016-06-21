diag_log "Logger.sqf Loading";

onServerLog = compile preprocessfile "onServerLog.sqf";

"PrintToServerLog" addPublicVariableEventHandler {PrintToServerLog spawn onServerLog};