func ejercicio1(){
    let userInputAge: String = "34e"
    
    if let userAge = Int(userInputAge){
        print("La edad del usuario es \(userAge)")
        
    }else {
        print("La edad del usuario no es valida")
    }
}
