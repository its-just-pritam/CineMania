//Gaming Mechanism++++++++++++++++++++++++++++++++++++++++++++++++++++//


const writeEvent = (text) => {
	const parent = document.querySelector('.match-container');
	const el = document.createElement('p');
	el.innerHTML = text;
	parent.appendChild(el);
};

var check = 0;

const onFormSubmitted = (e) => {

	e.preventDefault();
	const input = document.querySelector('#tm-moviename');
	const text = input.value;

	if(text != ''){
		word = text.toUpperCase();
		$(".movieName").replaceWith(`<div class="movieName">` + text + `</div>`);

		input.value = '';
		input.style.display = "none";
		alert("Challenge Submitted");
	
		sock.emit('message', text);
		check = 1;
	}else{
		alert('Enter name of a valid movie');
	}

};

const addButtonListeners = () => {

	const button = document.querySelector('#challenge-button');
	button.addEventListener('click', () => {
		sock.emit('turn', 'You shall challenge !');
	});

};



/*sock.on('redirect', function(destination) {
    window.location.href = destination;
});

sock.on('enter', function(address,flag) {
	const button = document.querySelector("#find-a-match");
	//button.setAttribute('href', address);
	button.addEventListener('click', () => {
		window.location.href = address;
		flag = 1;
	});
	return flag;
});*/

document.querySelector('#challenge-throw').addEventListener('submit', onFormSubmitted);

addButtonListeners();




//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//



//Page Effects

$(document).ready(function(){

	$(".bot-header").animate({"height" : "247px"}, 500, function(){

		$(".bot-header h2").fadeIn(1000);
		$("#tm-chances").fadeIn(1000);
		$("#tm-time").fadeIn(1000);
		$(".bot-header h1").animate({"font-size" : "100px"},1000);

	});

	
});






//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



//Create array of words
console.log("Hello CineMania!");


//const word = ['PAPRIKA','INCEPTION','HUGO','THE REVENANT','AKIRA','ZODIAC','CASABLANCA','THE DEPARTED','SEVEN','PRINCESS MONONOKE','SHUTTER ISLAND','SCHINDLER\'\S LIST','FULL METAL JACKET','2001: A SPACE ODYSSEY','THE SHINING','JURASSIC PARK','PARASITE','JOKER'];

//Choose word randomly

//let randNum = Math.floor(Math.random()*word.length);
 //$('.movieName p').html();


 		let rightWord = [];
		let wrongWord = [];
		let underScore = [];
		let chancesText = ['C','H','A','N','C','E','S',' ','L','E','F','T',' ',':',' '];
		let timerText = ['T','I','M','E',' ','L','E','F','T',' ',':',' '];

		//DOM Manipulation
		let docUnderScore = $(".underScore");
		let docRightGuess = $(".rightGuess");
		let docWrongGuess = $(".wrongGuess");
		let docChances = $("#tm-chances");
		let docTimer = $("#tm-time");


//MOVIE DATA

		function getMovies(chosenWord){
			axios.get('http://www.omdbapi.com?s=' + chosenWord + '&apikey=9be27fce').then(function(response){

				let movie = response.data.Search;
				console.log(movie[0]);
				console.log(movie[0].Poster);
				console.log(movie[0].Title);
				console.log(movie[0].Year);
				let output = `

					<div id="movie-poster-omdb">
						<img src="${movie[0].Poster}">
					</div>
					<div id="movie-name-omdb">
						<p>${movie[0].Title}<p>
					</div>
					<div id"movie-year-omdb">
						<p>${movie[0].Year}<p>
					</div>

				`;
				$("#movie-data").html(output);

			}).catch(function(err){
				console.log(err);
			});
		};

		


 		//Timer

 		var flag = 0;

		function countDown(secs, chosenWord) {

			console.log(chosenWord);
			timerText.push(secs.toString());
			docTimer[0].innerHTML = timerText.join('');

			if(secs <= 0 && flag == 0)
			{
				clearTimeout(timer);
				alert("Oops, time out !");
				timerText.pop();
				getMovies(chosenWord);
				return;
			}else if(flag == 1){
				return;
			}
			secs--;
			var timer = setTimeout('countDown(' + secs + ')',1000);
			timerText.pop();

		};



const GameIsOn = (chosenWord) => {


		var chances = chosenWord.length;
		chancesText.push(chances.toString());
		docChances[0].innerHTML = chancesText.join('');

		//Returns the count of distinct characters of chosen word

		function makeUnique(str) {
		return String.prototype.concat(...new Set(str));
		}

		//Create underscores based on word length

		let generateUnderscore = () => {

			for (let i = 0; i < chosenWord.length; i++) {
				underScore.push('_');
				
			}
			return underScore;

		}
	

		countDown(60, chosenWord);


		//Get users guess

		document.addEventListener('keypress',(event) => {

			let keycode = event.keyCode;
			let keyWord = String.fromCharCode(keycode);

			keyWord = keyWord.toUpperCase();

			if (chosenWord.indexOf(keyWord) > -1) {

				rightWord.push(keyWord);
				
				for(let i = chosenWord.indexOf(keyWord); i < chosenWord.length; ++i){
					if(chosenWord[i] == keyWord){
						underScore[i] = keyWord;
					}
				}

				docUnderScore[0].innerHTML = underScore.join(' ');
				docRightGuess[0].innerHTML = rightWord.join('');

				if(underScore.join('') == chosenWord) {
					alert("Congratulations, you got it right !");
					getMovies(chosenWord);
					flag = 1;
				}

			}else if(wrongWord.indexOf(keyWord) < 0){
				wrongWord.push(keyWord);
				docWrongGuess[0].innerHTML = wrongWord.join('');
				chancesText.pop();
				--chances;
				chancesText.push(chances.toString());
				docChances[0].innerHTML = chancesText.join('');

				console.log(makeUnique(wrongWord));

				if(makeUnique(wrongWord).length == chosenWord.length){
					alert("Oops, You couldn't figure out!");
					getMovies(chosenWord);
					flag = 1;
				}
			}
		});

		docUnderScore[0].innerHTML = generateUnderscore().join(' ');


};


const addChallengeListeners = () => {

	const challengeButton = document.querySelector('#challenge-button');

	challengeButton.addEventListener('click', () => {

		if(check == 1){
			const Word = document.querySelector('.movieName');
			const chosenWord = Word.textContent;
			sock.emit('callServer', chosenWord);
			//GameIsOn(chosenWord);
		}else{
			alert('Freeze a movie name first !')
		}

	});

};


const closeButton = document.querySelector('#close-button');

	closeButton.addEventListener('click', () => {

		sock.close();

	});


const sock = io();

sock.on('message',writeEvent);

sock.on('start',GameIsOn);

//sock.on('challengeTurn',addChallengeListeners);


addChallengeListeners();

