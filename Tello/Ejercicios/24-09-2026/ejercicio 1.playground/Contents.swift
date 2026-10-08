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


var index = 1

while index <= 100 {
    
    print(index)
    index += 1
}



var letra = 0
let letras = Array(alphabet)

while letra < letras.count {
    
    print(letras[letra])
    letra += 1
}



var estado = 0
let estados = Array(statesAndCapitals)

while estado < estados.count {
    
    print(estados[estado])
    estado += 1
}



    
