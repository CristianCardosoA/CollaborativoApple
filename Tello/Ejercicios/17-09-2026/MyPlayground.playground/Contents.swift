let userInputAge: String = "34e"

if let userAge = Int(userInputAge) {
    print("La edad convertida es: \(userAge)")
} else {
    print("Error: No se pudo convertir '\(userInputAge)' a un número entero válido.")
}
