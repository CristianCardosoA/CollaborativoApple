import UIKit

let letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var index = 0

for index in 1...100 {
    print(index)
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
