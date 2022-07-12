import UIKit

//Array
// Array de String e alimentando valores na criacao
var shoppingList :[String] = ["Milk", "Corn", "Apple", "Butter"]

//Usando Interferencia
var interferredShoppingList :[String] = ["Milk", "Corn", "Apple", "Butter"]

//Testando se o Array esta vazio
if shoppingList.isEmpty {
    print("The supermarket list is empty")
}
else {
    print("The supermarket list isn`t empty")
}

// Reciperamdo o total de elementos do Array
print("Our supermarket list has \(shoppingList.count) items ")
// resultado essa lista tem 4 itens

// Array de String empty
var emptyArray: [String] = []

// remover elementos do Array e atribuindo a uma variavel
let apple = shoppingList.remove(at: 3)

//removendo primeuri ou ultimo item
let butter = shoppingList.removeLast()
let milk = shoppingList.removeFirst()

// verificando se o indice da liste comtem o item
print(shoppingList.contains("Corn")) // true

// pesquisando o indice do elemtento
if let cornIndex = shoppingList.index(of: "Milk"){
    print("O indice do corn no array é \(cornIndex)")
}

//Dictionary (Dicionario)
// chave : Valor
var states :[String:String] = [ "KS":"Kansas", "MI":"Michigan", "NE": "Nebraska", "UT": "Utah"]

//Criando um dicionariovazio
var emptyStates = [String : String ] = [:]

// Verificando se esta vazio
if states.isEmpty{
    print("o dicionario esta vazio")
}

// recuperando o valor atribido a uma chave

let ks = states["KS"]
print(ks) // utulizar o options bind = desembrulhar para dar certo

if let ks = states["KS"] {
    print(ks) // KANSAS
}

//inserir elementos
states["WA"] = "Washington"

//verificando se deu certo
if states["WA"] != nil {
    print("Item esta no diionario ")
}

// 2 formas de remover items
states["WA"] = nil
states.removeValue(forKey: "KS")

//Set
//criando um Set de String
var movies :Set<String> = [
"Matrix",
"Justice Legue",
"Hary Potter",
"IT",
]

// criando um set vazio
var emptyMovies  = Set<String>()

//inserindo itens = nao insere itens iguais(nao duplica) se colocar o nmesmo nome ele nao altera a quantidade
movies.insert("Spider-man")
print(movies.count) // 5

//removento elementos
movies.remove("Spider-man")
print(movies)

//prtcorrendo um set = for it em outras linguagens
for movie in movies{
        print(movie)
}
//verificando se existe o item no set(item expeficico)
if movies.contains("Matrix"){
    print("Matrix esta na lista")
}

//criar um novo set para realizarmos algumas operacoes
var otherMovies :Set<String> = [
"Batman",
"Flash",
"Aquaman",
"Superman",
"Matrix"
]

//Criando Set a Partir desses = pegar em comum
let favoriteMovies = movies.intersection(otherMovies)
print(favoriteMovies)

//pegar todos os itens
let allMovies = movies.union(otherMovies)
print(favoriteMovies)

//remover um set de outro
movies = movies.subtracting(otherMovies)
print(movies)
