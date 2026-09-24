import UIKit

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


for(index, letter) in alphabet.enumerated() {
    print(letter)
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
    print("Estado: \(state) Capital: \(capital).")
}

var pairs = statesAndCapitals.enumerated().makeIterator()

while let pair = pairs.next() {
    print("Estado: \(pair.element.key) Capital: \(pair.element.value).")
}



for index in 1...100 {
    print(index)
}

var i = 1
while i <= 100 {
    print(i)
    i += 1
}
