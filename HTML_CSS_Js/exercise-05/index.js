let pokemonArray =[]
let offset=0
function fetchData(){
    console.log(offset)
    fetch("https://pokeapi.co/api/v2/pokemon?offset="+offset+"&limit=10")
    .then(response => response.json())
    .then(function(allpokemon){
        console.log(allpokemon)
        allpokemon.results.forEach(function(pokemon){
            fetch(pokemon.url)
            .then(response => response.json())
            .then(function(pokeData){
                displayPokemon(pokeData)
            })
            .catch( e=>{
                console.log(e)
            })
        })
    })
    .catch( e=>{
        console.log(e)
    })
}


function displayPokemon(pokeData){
        let pokemonContainer = document.getElementById('poke-container');
        let pokemonCard = document.createElement("div") 
        let pokemonName = document.createElement('h4')
        let pokemonWeight = document.createElement('div')
        let pokemonBaseExperience = document.createElement('div')
        pokemonBaseExperience.classList.add('baseExperience');
        pokemonWeight.classList.add('weight');

        let pokemonId=document.createElement('span');
        let viewMoreLink = document.createElement('a'); 
        let link = document.createTextNode("View More");

        viewMoreLink.title = "View More"; 
        viewMoreLink.target="viewDetails"
        viewMoreLink.href = `frame.html?id=${pokeData.id}`; 
        viewMoreLink.append(link)
        pokemonCard.classList.add('ui', 'card');
        pokemonCard.id=pokeData.id;

        createPokeImage(pokeData, pokemonCard);
        
        pokemonName.classList.add("name")
        pokemonId.innerText=pokeData.id
        pokemonName.innerText = pokeData.name
        pokemonWeight.innerText = `${pokeData.weight}`
        pokemonBaseExperience.innerText=`${pokeData.base_experience}`
        pokemonCard.append(pokemonId,pokemonName, pokemonWeight, pokemonBaseExperience,viewMoreLink);  
        pokemonContainer.appendChild(pokemonCard);    
}


function filterCards() {
    let input = document.querySelector('#searchbar').value
    input = input.toLowerCase();
    let cards = document.querySelectorAll('.card');                     
    cards.forEach((el) => {
            let title = el.querySelector('.name').textContent.toLowerCase();
            el.style.display = title.includes(input) ? "block" : "none";
    });
}

function createPokeImage(pokeData, containerDiv){
    let pokeImgContainer = document.createElement('div')
    pokeImgContainer.classList.add('Poke-image')

    let pokeImage = document.createElement('img')
    pokeImage.src = `${pokeData.sprites.front_default}`
    pokeImage.alt = "Loading..."
    pokeImage.addEventListener("mouseover",()=>
    {
        pokeImage.src = `${pokeData.sprites.back_default}`
    })
    pokeImage.addEventListener("mouseout",()=>
    {
        pokeImage.src = `${pokeData.sprites.front_default}`
    })
    pokeImgContainer.append(pokeImage);
    containerDiv.append(pokeImgContainer);
}

function sortCards(){
    let sortSelection = document.getElementById("sort");
    let sortedElements = [...document.querySelectorAll('.card')]
    console.log(sortedElements[0].childNodes[1].innerText)    
    if (sortSelection.value == 1){
        sortedElements.sort((a,b) => (a.childNodes[2].innerText) <(b.childNodes[2].innerText) ? -1 : 1);
        document.getElementById("poke-container").append(...sortedElements);   
    }
    if (sortSelection.value == 2){
        sortedElements.sort((a,b) => {return parseInt(a.childNodes[3].innerText) - parseInt(b.childNodes[3].innerText)});
        document.getElementById("poke-container").append(...sortedElements);  
    }
    if (sortSelection.value == 3){
        sortedElements.sort((a,b) => {return parseInt(a.childNodes[4].innerText) - parseInt(b.childNodes[4].innerText)});
        document.getElementById("poke-container").append(...sortedElements);
    }
}
function loadData(){
    offset+=20
    fetchData()
}
document.addEventListener("DOMContentLoaded", () =>{
    fetchData();
    sort_select=document.getElementById("sort")
    search=document.getElementById("searchbar")
    PokeImg=document.getElementsByClassName("Poke-image")
    sort_select.addEventListener("change",sortCards)
    search.addEventListener("keyup",filterCards) 
    
    load_btn=document.getElementById("Load-btn")
    load_btn.addEventListener("click",loadData)
    
})

