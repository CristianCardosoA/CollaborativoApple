import Foundation

func ejercicioOptionals(){
    let userImputAge: String = "34e"
    
    if let userAge = Int(userImputAge){
        print("Tu edad es: \(userAge)")
    }else{
        print("No es un número válido")
    }
}
