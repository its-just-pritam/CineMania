
class CMgame{

	constructor(p1,p2){
		this._players = [p1,p2];
		this._turns = [null,null];

		this._sendToPlayers('CineMania starts !');

		this._players.forEach((player, idx) => {
			player.on('turn', (turn) => {
				this._onTurn(idx,turn);
			});

		});

	}

	_sendToPlayer(playerIndex, msg){
		this._players[playerIndex].emit('message', msg);
	}

	_sendToPlayers(msg) {
		this._players.forEach((player) => { 
			player.emit('message',msg) 

			

		});
	}

	
	_onTurn(playerIndex, turn) {
		this._turns[playerIndex] = turn;

		this._sendToPlayer(playerIndex, `${turn}`);

		this._players[playerIndex].on('callServer', (chosenWord) => {
				//this._players[playerIndex].emit('start', chosenWord);
				this._players[1-playerIndex].emit('start', chosenWord);
			});

		this._sendToPlayer(1-playerIndex, `You are challenged !`);


		this._checkRoundOver();

	}

	_checkRoundOver() {
		const turns = this._turns;
		if(turns[0] && turns[1]){
			this._sendToPlayers('Round Over');
			this._turns = [null,null];
		}
	}

	/*_checkRoundReult() {
		


	}*/
}

module.exports = CMgame;