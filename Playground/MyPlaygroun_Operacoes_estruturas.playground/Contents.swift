import UIKit
import Darwin

// operadores
var a = 15
var b = 5

// matematicos
var sum = a + b
var subtract = a - b
var multiplication = a * b
var division = a / b
var modulo = a %  b //resto da divisao
var minusA = -a //valor negativo de a

//compostos (+=, -=, /=, %= )
var newValue = 20
newValue += a
newValue -= a
newValue /= b
newValue %= b

//logicos (&&, ||, !)
var yes = true, no = false
print(yes && no)
print(yes || no)
print(!yes)

//comparacao (>, <, >=, <=, ==, !=
var c = 9, d = 5
print(a > b)
print(a < b)
print(b >= d)
print(a <= c)
print(b == d)
print(b != d)

// termnario (condicao ? resultado ser true : resultado ser  false
var grade = 7.5
var result =  grade > 7.0 ? "aprovado" :"reprovado"
print(result)

//Coakesciencia nula (??)
var age = Int?
let myAge = age ?? 0 //0

age = 25
let newAge = age ?? 0 //25

//Closed Range e Half Closed Range (... e ...)
let numbers = 1...10
for number in numbers {
    print(number) // imprimi 1 a 10
}

let newNumber = 1..<10
for number2 in newNumber{
    print(number2)
}

// estruturas condiconais e de repetcao
let num = 11

if num % 2 == 0{
    print("Ele é par")
}
else {
    print("Ele é impar")
}

var temperature = 18
var climate = ""

if temperature <= 0 {
    climate = "Muito frio"
}
else if temperature < 14 {
    climate = "Frio"
}
else if temperature < 21 {
    climate = "Agradavel"
}
else if temperature < 30 {
    climate = "Quente"
}
else {
    climate = "Muito Quente"
}

//switch
var number2 = 7

switch number2 %2 {
case 0:
    print("\(number2) é par")
default:
    print("\(number2) é impar")
}

// Varios case
let letter = "z"

switch letter {
case "a", "e", "i", "o", "u" :
    print("vogal")
default:
    print("Consoante")
}

let speed = 33.0

switch speed {
case 0.0..<20.0:
    print("Primeira Marcha")
case 20.0..<40.0:
    print("Segunda Marcha")
case 40.0..<50.0:
    print("Terceira Marcha")
case 50.0..<90.0:
    print("Quarta Marcha")
default:
    print("Quinta Marcha")
}


// While
var life = 10
while life >0 {
    print("O jogador esra com \(life) vidas ")
life = life -1
}

//usando repeat while
var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
    }
while diceNumber != 6
print("Voce tiroy 6 apos \(tries)  tentativas")
        

//for in
let students = [
"Joao M",
"Paulo J",
"Carlos L",
"Junior P",
"Marcos S"
]
for student in students{
    print("O aluno \(students) veio na aula hoje")
}

//Range = sequencia
for day in 1..30{
        print("Estou no dia \(day)")
}

//Percorrendo dicionarios
let people = [
    "Paulo " : 20,
    "Jose " : 35,
    "Carlos " : 13,
    "Pedro" : 30,
    "Gustavo " : 25
]
for person in people {
    print(person.key , person.value )
}
