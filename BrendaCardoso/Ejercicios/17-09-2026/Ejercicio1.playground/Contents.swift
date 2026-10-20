import UIKit

func ejercicio(){
    let userInputAge: String = "34e"
    
    if let userAge = Int(userInputAge){
        print("la edad del usuario es \(userAge)")
        
    }else {
        print("la edad no es valida")
    }
}

