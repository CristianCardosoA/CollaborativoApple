import UIKit

let letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var index = 0

for index in 1...100 {
    print(index)
}

var num = 0
while num < 101 {
    print(num)
    
    num += 1
}

for (index, letter) in letras.enumerated() {
    print("\(index) : \(letter)")
}

while index < letras.count {

    let stringIndex = letras.index(letras.startIndex, offsetBy: index)
    let letter = letras[stringIndex]
    
    print("\(index) : \(letter)")
    
    index += 1
}

let estados: [String : String] = [
    "Jalisco" : "Guadalajara",
    "Ciudad de México" : "Ciudad de México",
    "Baja California" : "Tijuana"
]

for (estado, capital) in estados{
    print("La capital de \(estado) es \(capital)")
}

let parejas = Array(estados)

var i = 0

while i < parejas.count {
    let estado = parejas[i].key
    let capital = parejas[i].value
    
    print(("La capital de \(estado) es \(capital)."))
    
    i += 1
}
