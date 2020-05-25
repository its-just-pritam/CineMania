//Page Effects

$(document).ready(function(){

	$(".match-header").animate({"height" : "247px"}, 500, function(){

		$(".match-header h2").fadeIn(1000);
		$("#tm-chances").fadeIn(1000);
		$("#tm-time").fadeIn(1000);
		$(".match-header h1").animate({"font-size" : "100px"},1000);

	});

	
});






//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



//Create array of words
console.log("Hello CineMania!");

var flag = 0;

const word = ['PAPRIKA','INCEPTION','HUGO','THE REVENANT','AKIRA','ZODIAC','CASABLANCA','THE DEPARTED','SEVEN','PRINCESS MONONOKE','SHUTTER ISLAND','SCHINDLER\'\S LIST','FULL METAL JACKET','2001: A SPACE ODYSSEY','THE SHINING','JURASSIC PARK','PARASITE','JOKER'];

//Choose word randomly

let randNum = Math.floor(Math.random()*word.length);
let chosenWord = word[randNum];
let rightWord = [];
let wrongWord = [];
let underScore = [];
let chancesText = ['C','H','A','N','C','E','S',' ','L','E','F','T',' ',':',' '];
var chances = chosenWord.length;
let timerText = ['T','I','M','E',' ','L','E','F','T',' ',':',' '];

console.log(chosenWord);

//DOM Manipulation
let docUnderScore = $(".underScore");
let docRightGuess = $(".rightGuess");
let docWrongGuess = $(".wrongGuess");
let docChances = $("#tm-chances");
let docTimer = $("#tm-time");

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
}

//Timer

function countDown(secs){

	timerText.push(secs.toString());
	docTimer[0].innerHTML = timerText.join('');

	if(secs <= 0 && flag == 0)
	{
		clearTimeout(timer);
		alert("You Lost!");
		timerText.pop();
		getMovies(chosenWord);
		return;
	}else if(flag == 1){
		return;
	}
	secs--;
	var timer = setTimeout('countDown(' + secs + ')',1000);
	timerText.pop();

}


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
			alert("Congratulations, You Won!");
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
			alert("Oops, You Lost!");
			getMovies(chosenWord);
			flag = 1;
		}
	}
});

docUnderScore[0].innerHTML = generateUnderscore().join(' ');


countDown(60);
