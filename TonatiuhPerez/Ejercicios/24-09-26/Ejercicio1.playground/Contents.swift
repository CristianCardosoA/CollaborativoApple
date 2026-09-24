import UIKit

let letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


for index in 1...100{
    print(index)
}

for (index, letter) in letras.enumerated(){
    print("\(index) : \(letter)")
}

let estados: [String : String] = [
    "Jalisco" : "Guadalajara",
    "Ciudad de México" : "Ciudad de México",
    "Baja California" : "Tijuana"
]

for (estado, capital) in estados{
    print("La capital de \(estado) es \(capital)")
}
