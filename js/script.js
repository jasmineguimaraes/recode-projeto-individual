const url = "https://raw.githubusercontent.com/jasmineguimaraes/recode-projeto-individual/master/js/produtos.json"

const produtosArray = [];

let mostrarTodas

fetch(url)
    .then(response => response.json())
    .then(data => {
        const produtos = data.produtos
        Object.entries(produtos)
            .map(todosOsProdutos => produtosArray.push(todosOsProdutos))

            mostrarTodas()
    })
    .catch(err => {
        alert("Verifique sua conexão com a internet e tente novamente!")
        console.error(err)
    })

    

document.addEventListener("DOMContentLoaded", (event) => {

    filtrarCategoria = (categorias) => {

        deletarProdutos()

        for (let i = 0; i < produtosArray.length; i++) {

            let coisa = produtosArray[i][0] == categorias;
            if (coisa) {

                let items = produtosArray[i][1].items
                items.map(item => {

                    let imagem = item.imagem
                    let titulo = item.titulo
                    let preco = item.preco
                    productContainer(imagem, titulo, preco)
                    console.log(item)

                })
            }

            if (categorias == undefined) {

                let items = produtosArray[i][1].items
                items.map(item => {

                    let imagem = item.imagem
                    let titulo = item.titulo
                    let preco = item.preco
                    productContainer(imagem, titulo, preco)
                    console.log(item)

                    console.log(item)
                })


            }
        }
    }

    mostrarTodas = () => {

        return filtrarCategoria()

    }

   

    deletarProdutos = () => {

        return document.querySelectorAll(".product-container").forEach(produto => produto.remove())

    }

    productContainer = (imagem, titulo, preco) => {

    

        let categoriasDiv = document.getElementById("categorias")
        return categoriasDiv.insertAdjacentHTML('afterend', ` 
    <div class="product-container">
      <img class="picture-tag" src="${imagem}" alt="${titulo}">
      <p class="product-tag">${titulo}</p>
      <hr>
      <p class="pricing"> ${preco} </p>
    </div>
    
    `)


    }





        

});

