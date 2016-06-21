diag_log "onServerLog Running";

_uid = _this select 0;
_name = _this select 1;
_action = _this select 2;

//Diag the action
diag_log format["TCTLIFE ADMIN ACTION - Name: %1 | UID: %2 | Action: %3",_name,_uid,_action];