import Cocoa

for numero in 1...100 {
    print(numero)
}


let alphabet = "abcdefghijklmnopqrstuvwxyz"

for (indice, letra) in alphabet.enumerated() {
    print("\(indice): \(letra)")
}



let caoitales: [String: String] = [
    "Jalisco": "Guadalajara",
    "Yucatan": "Mérida",
    "Nuevo Leon": "Monterrey"
    ]

for(estado, capital) in capitales {
    print("La capital de \(estado) es \(capital)")
}

