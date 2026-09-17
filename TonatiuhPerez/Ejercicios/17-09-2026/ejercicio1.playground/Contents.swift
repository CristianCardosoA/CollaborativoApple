import Foundation

func ejercicio(){
    let userInputAge: String = "34e"
    
    
    if let userAge = Int(userInputAge){
        print("La edad del usuario es \(userAge)")
    } else {
        print("La edad ingresada no es válida")
    }
}
