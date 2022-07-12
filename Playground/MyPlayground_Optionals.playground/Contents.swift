import UIKit

//Optionals
var driverLicence = String?
print(driverLicence) // result :nil = null

//atribuindo valores optional
driverLicence = "6745847"

//desembrulando optional de maneira nao segura
print(driverLicence!)

//Optional Binding
if let license = driverLicence{
    print("A carteira de motorista é "\(license))
}
else {
    print("nao possue carteira de motorista")
}

//Implicitly unwrapped Optional
var alias: String!
print("Meu apleido é \(alias)")

alias = "Pele"
print("Meu apelido é \(alias.uppercased())")

//Nil Colescing Operation =
var age: Int?
let age2 = age ?? 0
print(age2) //44

age = 27
let age3 = age ?? 0
print(age3) //27

//optional chaining = cadeia de optional mais seugro

var weekDay : String
print(weekDay?.uppercased()) //nil
weekDay = "Monday"

print(weekDay?.uppercased()) // Monday




