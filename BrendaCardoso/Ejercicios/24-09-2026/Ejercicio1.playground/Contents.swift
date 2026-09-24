import UIKit

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


for character in alphabet {
    print(character)
}


var index = alphabet.startIndex

while index < alphabet.endIndex {
    let character = alphabet[index]
    print(character)
    
    index = alphabet.index(after: index)
}



let statesAndCapitals: [String: String] = [
    "Virginia": "Richmond",
    "New York": "Albany",
    "Utah": "Salt Lake City"
]

for (state, capital) in statesAndCapitals {
    print("La capital de \(state) es \(capital).")
}

var iterator = statesAndCapitals.makeIterator()

while let (state, capital) = iterator.next() {
    print("Estado: \(state), Capital: \(capital)")
}
