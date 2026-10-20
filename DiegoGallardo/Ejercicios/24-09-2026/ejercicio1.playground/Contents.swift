import Cocoa

let alphabet = "ABCDEFGHIGKLMNOPQRSTUVWXYZ"

for(index, letter) in alphabet.enumerated() {
    print(letter)
}

var index = alphabet.startIndex
while index < alphabet.endIndex {
    let char = alphabet[index]
    print(char)
    index = alphabet.index(after: index)
}

let stateAndCapitals: [String: String] = [
    "CA": "Sacramento",
    "NY": "Albany",
    "IL": "Springfield"
]

for (state, capital) in stateAndCapitals {
    print("\(state): \(capital)")
    
}

var pairs = stateAndCapitals.enumerated().makeIterator()

while let pair = pairs.next() {
    print("Estado:  \(pair.element.key)   Capital: \(pair.element.value)")
}

for index in 1...100{
    print(index)
}

var i = 1
while i <= 100 {
    print(i)
    i += 1
}

