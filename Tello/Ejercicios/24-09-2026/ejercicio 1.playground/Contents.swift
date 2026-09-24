import UIKit

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

let statesAndCapitals: [String: String] = [
    "Utah": "Salt Lake City",
    "New York": "Albany",
    "Virginia": "Richmond"
]

for index in 1...100 {
    
    print (index)
}

for letra in alphabet {
    
    print(letra)
}


for (estados) in statesAndCapitals {
    print(estados)
}

var numero = 1
let letras = Array(alphabet)

while numero <= 26 {
    print("\(numero) : \(letras[numero - 1])")
    numero += 1
}


    
