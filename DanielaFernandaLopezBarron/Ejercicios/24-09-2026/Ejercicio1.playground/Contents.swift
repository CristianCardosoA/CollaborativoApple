import UIKit

//Recorrer los números del 1 al 100
for number in 1...100 {
    print(number)
}

//Recorrer el alfabeto y mostrar el índice
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letter) in alphabet.enumerated() {
    print("\(index): \(letter)")
}

//Diccionario de estados y capitales y su recorrido
let statesAndCapitals: [String: String] = [
    "Virginia": "Richmond",
    "Utah": "Salt Lake City",
    "New York": "Albany"
]git status
for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital).")
}

