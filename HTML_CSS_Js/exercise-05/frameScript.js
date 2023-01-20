let Data=[]
function fetchData(){
console.log(document.URL)
var id =document.URL.substring(document.URL.lastIndexOf('=') + 1);
fetch("https://pokeapi.co/api/v2/pokemon/"+id)
.then(response => response.json())
.then(function(pokeData){
            Data.push(pokeData)
            displayPokemon()
        })
        .catch( e=>{
            console.log(e)
        })
    
}
function displayPokemon()
{
let pokeName=document.getElementById('name') 
let pokeWeight=document.getElementById('weight') 
let pokeExperience=document.getElementById('experience') 
let pokeSpecies=document.getElementById('species') 
let pokeStats=document.getElementById('stat') 
let pokeForms=document.getElementById('forms') 
let pokeMoves=document.getElementById('moves') 
let pokeImage=document.getElementById('sprite')
console.log(Data[0])
pokeImage.src=`${Data[0].sprites.front_default}`
pokeName.innerText=Data[0].name;
pokeWeight.innerText=Data[0].weight;
pokeExperience.innerText=Data[0].base_experience
pokeForms.innerText=Data[0].forms[0].name
pokeSpecies.innerText=Data[0].species.name
let moves=Data[0].moves.slice(0,5)
let stats=Data[0].stats
stats.map((s)=>{pokeStats.innerText+=` ${(s.stat.name)}, `})
moves.map((moves)=>{pokeMoves.innerText+=` ${(moves.move.name)}, `})
}
function loadMoves(btn)
{ 
btn.style.display='none';
let moves=Data[0].moves.slice(5,)
let pokeMoves=document.getElementById('moves')
moves.map((moves)=>{pokeMoves.innerText+=` ${(moves.move.name)}, `})
}

function createPokeImage(pokeData, containerDiv){
let pokeImgContainer = document.createElement('div')
pokeImgContainer.classList.add('Poke-image')
let pokeImage = document.createElement('img')
pokeImage.src = `${pokeData.sprites.front_default}`
pokeImgContainer.append(pokeImage);
containerDiv.append(pokeImgContainer);
} 
fetchData();