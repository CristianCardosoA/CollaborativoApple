import UIKit
import Foundation

//Recorrer los números del 1 al 100
for number in 1...100 {
    print(number)
}
//Con while
var number = 1

while number <= 100 {
    print(number)
    number += 1
}

//Recorrer el alfabeto y mostrar el índice
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letter) in alphabet.enumerated() {
    print("\(index): \(letter)")
}
//Con while
var index = 0

while index < alphabet.count {
    let stringIndex = alphabet.index(alphabet.startIndex, offsetBy: index)
    let letter = alphabet[stringIndex]
    
    print("\(index): \(letter)")
    
    index += 1
}

//Diccionario de estados y capitales y su recorrido
let statesAndCapitals: [String: String] = [
    "Virginia": "Richmond",
    "Utah": "Salt Lake City",
    "New York": "Albany"]

for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital).")
}
//Con while
let states = Array(statesAndCapitals)
var stateIndex = 0

while stateIndex < states.count {
    let state = states[stateIndex].key
    let capital = states[stateIndex].value
    
    print("The capital of \(state) is \(capital).")
    
    stateIndex += 1
}
