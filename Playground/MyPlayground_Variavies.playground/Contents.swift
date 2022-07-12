import UIKit
//apneas class com letra Maiuscula
var ag1 = 20
var ag2 = 30
var sum = ag1 + ag2
ag2 = 50



var name: String = "Thomaz"

var name2 ="Caio"

var fistName ="Caio"
var lastname="Nogueira"


var 🥶 = "frio"
var 🥵 ="calor"
print("eu prefiro", 🥶, "do que",🥵)


//variavel em linha

var x = 10, var y = 20 , var z ="oi"

// variavel com let nnca muda o valor
let bestOS = "ios"
let pi = 3.14

//var int
var value1 = 500
var value2: Int = 500
var age: UInt8 = 20 //somente valores positivos

print(Int.max) //mostrar o maximo aceito pelo int
print(Int.min) // menor numero aceito pleo int


//var double e Float
// double usa 64 bits, float 32 = cabe mais no doble e gasta mais memoria

var number = 200.30
var salary: Double 2000.50
var tempertature: Float = 150.70


// var String e Character
//character ocupa apenas o espaco utuilazso
// \n quebra linha
// \t alumenta o espaco

var module : String = "Swift"
var school ="Fiap School"

var latter = "A"
var letter2 : Character = "B"

var text = ("utilizamos o /n para quebrar a linha e o /t para aumentar o espacamento ")
print(text)

//interpolaçao de String
let studentGrade = 9.2
let studentName="Caio"
let result = "Aprovado"

let message = "O aluno \(studentName) tirou \(studentGrade) e esta \(result)"
print(result)

//var Booleam
var isApproved = true
var fistTime : Bool = false

//var Tuple
let address = "Paulista avenue, 1106, 01311-000"
let newAddress : (String,Int,String = ("Paulista avenue", 1106,"01311-000"))
                  
    print("O nome da rua é \(newAddress.0)")
    print("O numero é \(newAddress.1)")
    print("O CEP é \(newAddress.2)")
                  
//var Tupe nomeada
let address2 :(Street: String, numb:Int, zipCode:String) = ("Paulista avenue", 1106, "01311-000")

print("O nome da rua é \(address.Street)")
print("O numero é \(address.numb)")
print("O CEP é \(address.zipcode)")

//decomposicao de tupla
let (streetName, streetNumber, )=address2
//streetName = street, streetNumber = numb
print(" O numero da rua é"\(streetNumber))


