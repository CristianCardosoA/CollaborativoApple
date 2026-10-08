import UIKit

for index in 1...100 {
    print(index)
}

var number = 1
while number <= 100 {
    print(number)
    number += 1
}

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for(index, letter) in alphabet.enumerated(){
    print("\(index): \(letter)")
}

let alphabetArray = Array(alphabet)
var index = 0
while index < alphabetArray.count {
    print("\(index): \(alphabetArray[index])")
    index += 1
}


let statesAndCapitals: [String: String] = [
    "Utah": "Salt Lake City",
    "New York": "Albany",
    "Virginia": "Richmond"
]

for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital).")
}


let parejas = Array(statesAndCapitals)

var i = 0

while i < parejas.count {
    let state = parejas[i].key
    let capital = parejas[i].value
    
    print("The capital of \(state) is \(capital).")
    i += 1
}
