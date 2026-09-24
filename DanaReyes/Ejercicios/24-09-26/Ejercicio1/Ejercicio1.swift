import Cocoa
for number in 1...100 {
    print("This number \(number)")
}

var number = 1
while number <= 100 {
    print(number)
    index += 1
}
    


let alphabet = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
for (index, letter) in alphabet.enumerated(){
    print(index, letter)
}

var alphabet = Array("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ")
var index = 0
while index < alphabet.count {
     print(index, alphabet[index])
     index += 1
    
}

let statesAndCapitals: [String: String] = [
    "Aguascalientes": "Aguascalientes",
    "Coahuila": "Saltillo",
    "Merida": "Yucatan"
]

for(state, capital) in statesAndCapitals{
    print("\(state): \(capital)")
}

let statesAndCapitals: [String: String] = [
    "Aguascalientes": "Aguascalientes",
    "Coahuila": "Saltillo",
    "Merida": "Yucatan"
]

let pairs = Array(statesAndCapitals)
var index = 0
while index < pairs.count {
    let state = pairs[index].key
    let capital = pairs[index].value
    print("\(state): \(capital)")
    index += 1
}

