//funcoes e closures

//Sintaxe para criação de funções
    /*
     func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
        //Códigos
        return TipoDeRetorno
     }
    */
    //Exemplo de uma função simples que não recebe
    //parâmetros e não retorna nada
    func printHello() {
        print("Hello!!!!")
    }
    printHello()    //Hello!!!
    //Função que aceita parâmetro
    func say(message: String) {
        print(message)
    }
    say(message: "Vamos criar funções em Swift")
    //Função que aceita mais de um parâmetro e que retorna algo
    func sumNumbers(a: Int, b: Int) -> Int {
        return a + b
    }
    var result = sumNumbers(a: 10, b: 15)
    print(result)   //25

//A função abaixo serve para darmos uma mensagem de
    //boas vindas a alguém
    func say(welcome message: String, to person: String) {
        print("(message) (person)!")
    }
    say(welcome: "Seja bem-vindo", to: "aluno")
    //Seja bem-vindo aluno!
    //Removendo o nome externo do primeiro parâmetro
    func say(_ message: String, to person: String) {
        print("(message) (person)!")
    }
    say("Olá", to: "Fabiana")
    //Olá Fabiana!
    //Removendo todos os parâmetros externos
    func sumNumbers(_ number1: Int, _ number2: Int) -> Int {
        return number1 + number2
    }
    print(sumNumbers(3, 7)) //10


func sum(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    func divide(_ a: Int, _ b: Int) -> Int {
        return a / b
    }
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    //A função abaixo utiliza outra função como parâmetro
    func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
        return operation(a, b)
    }
    let result1 = applyOperation(10, 20, operation: multiply)
    print(result)   //200

//Criando um "apelido" para (Int, Int) -> Int
    typealias Op = (Int, Int) -> Int
    //Método que retorna outro métido
    func getOperation(_ operation: String) -> Op {
        switch operation {
        case "soma":
            return sum
        case "subtração":
            return subtract
        case "multiplicação":
            return multiply
        default:
            return divide
        }
    }
    //Abaixo, a variável operation receberá a função
    //retornara pelo método getOperation
    var operation = getOperation("soma")
    operation(30, 15)

//Closues
//Sintaxe de uma função
    /*
     func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
        //Códigos
        return TipoDeRetorno
     }
     */
    //Sintaxe de uma closure
    /*
      {(parâmetro: Tipo) -> TipoDeRetorno in
        //Códigos
        return TipoDeRetorno
     }
     */

func applyOperation1(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
        return operation(a, b)
    }
    //Implementando uma closure que realiza a operação
    //de módulo

//simplicicando
    applyOperation1(14, 5, operation: {(x: Int, y: Int) -> Int in
        return x % y
    })

applyOperation1(14, 5, operation: {x, y -> Int in
        return x % y
    
    })

applyOperation(14, 5, operation: {x, y in
        return x % y
    })

applyOperation(14, 5, operation: {
        return $0 % $1
    })


applyOperation(14, 5, operation: {$0 % $1})

//ultima simplificaaçao
applyOperation(14,5){$0 % $1}




let names = ["João", "Paulo", "Henrique", "Ana", "Beatriz", "Carla", "Caroline"]
    //Aplicando map em names
    let uppercasedNames = names.map({$0.uppercased()})
    print(uppercasedNames)
    //["JOÃO", "PAULO", "HENRIQUE", "ANA", "BEATRIZ", "CARLA", "CAROLINE"]

//Aplicando filter em names
    let filteredNames = names.filter({$0.count < 6})
    print(filteredNames)
    //["João", "Paulo", "Ana", "Carla"]


//Utilizando Reduce
    var transactions = [500.0, -45.0, -70.0, -25.80, -321.72, 190.0, -35.15, -100]
    //Sintaxe do reduce
    //func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Double) throws -> Result) rethrows -> Result
    let balance = transactions.reduce(0.0, {$0 + $1})
    print("Seu saldo é R$ (balance)")
    //Seu saldo é R$ 92.33

//generics
/*
func swapInts(_ a: inout Int, _ b: inout Int) {
        let tempA = a
        a = b
        b = tempA
    }
    var int1 = 20
    var int2 = 30
    swapInts(&amp;int1, &amp;int2)
    print(int1, int2)   //30, 20

//Método genérico
    func swapValues<T>(_ a: inout T, _ b: inout T) {
        let tempA = a
        a = b
        b = tempA
    }
    var name1 = "Jaqueline"
    var name2 = "Carlos"
    swapValues(&amp;name1, &amp;name2)
    print(name1, name2) //Carlos Jaqueline
    var value1: Double = 55.7
    var value2: Double = 28.9
    swapValues(&amp;value1, &amp;value2)
    print(value1, value2) //28.9 55.7
*/


//Classes e strucs

struct RGBColor {
    
        //Propriedades armazenadas
        var red : Int
        var green : Int
        var blue : Int
        
        //Métodos de classe
        func printColor() {
            print("""
            Red: (red)
            Green: (green)
            Blue: (blue)
            """)
             }
    }
    
    //Instanciando a struct RGBColor
    var rgbYellow = RGBColor(red: 255, green: 255, blue: 0)
    
    //Acessando e Alterando uma propriedade de rgbYellow
    rgbYellow.red = 254
class Person {
    //propriedades armazenadas
    var name: String
    var isMale: Bool
    var age: Int = 0
    
    //metado construtor da classe
    init(name:String, isMale:Bool){
        self.name = name
        self.isMale = isMale
        
    }
    
    //class
    //proriedades computada
    class Person {
            
            //Propriedades armazenadas
            var name: String
            var isMale: Bool
            var age: Int = 0
            
            //Método construtor da classe
            init(name: String, isMale: Bool) {
                self.name = name
                self.isMale = isMale
            }
            
            //Métodos de classe
            func speak(sentence: String) {
                if age < 3 {
                    print("gugu dada")
                } else {
                    print(sentence)
                }
            }
            
            func introduce() -> String {
                return "Olá, meu nome é (name)"
            }
      /*
        class Person {
                
                //.....
                //Propriedade computada
                var gender: String {
                    if isMale {
                        return "masculino"
                    } else {
                        return "feminino"
                    }
                }
                
       */ //......
            }
       
        
        }
        //Instanciando a classe Person
        let eric = Person(name: "Eric Alves Brito", isMale: true)
        //Alterando uma propriedade de eric
        eric.age = 39
/*
// heranca
class Student: Person{
    var rm: String
    
     init(name: String, isMale: Bool, rm:String){
        self.rm = rm
        super.init(name: name, isMale: isMale)
    }
    
    //Sobrescrita
    override func introduce() -> String{
        return "\(super.introduce()) e meu rm nesta escola é \(rm)"
    }
}
let student = Student(name: "Beatriz Brito", isMale : false , rm: "93843")
print(student.introdice())
*/

import Foundation
    let name = "Eric Alves Brito"
    extension String {
        var initials: String {
            let words = self.components(separatedBy: " ")
            let firstLetters = words.map({String($0.first!)})
            return firstLetters.joined()
        }
        
        func getVowelsCount() -> Int {
            var total: Int = 0
            let characterArray = Array(self)
            for letter in characterArray {
                let lowerLetter = String(letter).lowercased()
                switch lowerLetter {
                case "a", "e", "i", "o", "u":
                    total += 1
                default:
                    break
                }
            }
            return total
        }
    }
    print("O nome (name) tem (name.getVowelsCount()) vogais")
    //O nome Eric Alves Brito tem 6 vogais
    print("As iniciais de (name) são (name.initials)")
    //As iniciais de Eric Alves Brito são EAB
