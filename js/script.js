const url = "";

fetch(url).then(res => res.json())
    .then(data => {
        const produtos = data.produtos
    }).catch(err => {
        alert("Verifique sua conexão com a internet e tente novamente!")
        console.error(err)
    })
document.addEventListener("DOMContentLoaded", (event) => {

});