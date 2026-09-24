import Cocoa
for number in 1...100 {
    print("This number \(number)")
}


let alphabet = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
for (index, letter) in alphabet.enumerated(){
    print(index, letter)
}

let statesAndCapitals: [String: String] = [
    "Aguascalientes": "Aguascalientes",
    "Coahuila": "Saltillo",
    "Merida": "Yucatan"
]

for(state, capital) in statesAndCapitals{
    print("\(state): \(capital)")
}
