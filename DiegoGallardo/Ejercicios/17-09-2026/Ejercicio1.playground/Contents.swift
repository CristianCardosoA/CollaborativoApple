import Cocoa

func ejercicio(){
    
    let userInnputAge: String = "34e"
    
    if let userAge = Int(userInnputAge){
        print("la edad del usuario es  \(userAge)")
        
        
    }else{
        print("la edad no es valida")
    }
}







