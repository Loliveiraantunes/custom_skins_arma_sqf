AnimChangeCounter = 0;
HintAlreadyOpened = false;


#include  "setSkinInVehicles.sqf";
call Fn_setSkinWhenStart;

/*player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	
	_vehicle addEventHandler [
		"Engine", { 
			_this params ["_vehicle","_engineStatus"]; 

			_vehicle setObjectTexture [0, "skins\blackwasp\wasp.paa"];
			_vehicle setObjectTexture [1, "skins\blackwasp\wasp2.paa"];

			_status = "";

			if( _engineStatus ) then {
				_status = "Ligado";
			}else{
				_status = "Desligado";
			};

			if( !HintAlreadyOpened ) then {
				hint format ["Motor %1.", _status];
				HintAlreadyOpened = true;
				sleep 3;
				hintSilent "";
				HintAlreadyOpened = false;
			};
		}];
}];*/

player addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	systemChat format["%1 Matou %2 ", _killer, _unit ];
}];

addMissionEventHandler ["EntityKilled", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	systemChat format["%1 Matou %2 ", _killer, _unit];
}];



/*Fn_Funcao_Contador = {
		// _this  = params vindos da execução da função.
	 _this spawn {
		_this params ["_time" , "_sleep" , "_callback"];

		// Condicional. 
		while {sleep _sleep; _time = _time - 1; _time >= 0} do {
			_time call _callback;
		};

	};
};

	 //       Nome da Ação , Função
player addAction[ "Ativar Protocolo", {
	// time , sleep , funcao 
	[10,1,{

		if(_this == 0) then {
			hint "Sistema de Armas foram Iniciados";
			sleep 5;
			hintSilent "";
		}else{
			systemChat format[" %1 Segundos para inicialização.", _this]
		}
	}] call Fn_Funcao_Contador
}];
*/