import UIKit

for index in 1...100{
    print(index)
}

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for(index, letter) in alphabet.enumerated(){
    print("\(index): \(letter)")
}

let statesAndCapitals: [String: String] = [
    "Utah": "Salt Lake City",
    "New York": "Albany",
    "Virginia": "Richmond"
]

for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital).")
}
