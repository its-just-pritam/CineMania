'use strict';

const http = require('http');
const express = require('express');
const socketio = require('socket.io');
const CMgame = require('./CMgame');

const app = express();

//const clientPath = `${__dirname}`;
console.log(__dirname);
//console.log(`Serving static from ${clientPath}`);

app.use('/clientPath',express.static(__dirname + '/../'));

const server = http.createServer(app);

const io = socketio(server);

let waitingPlayer = null;
//var flag = 0;

io.on('connection', (sock) => {

	if(waitingPlayer){
		//Start a game

		new CMgame(waitingPlayer,sock);
		waitingPlayer = null;
		
	}else{

		waitingPlayer = sock;		
		waitingPlayer.emit('message','Waiting for an opponent...');
		//flag = 0;

	}

	console.log('Someone Connected!');

	sock.on('message', (text) => {
		io.emit('message', text);
	});

});
	

server.on('error',(err) => {
	console.error('Server error:',err);
});

server.listen(8086,() => {
	console.log('CineMania matching server started on 8086');
});