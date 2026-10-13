import Foundation

func ejercicioOptionals() {
    let userInputAge: String = "34e"

    if let userAge = Int(userInputAge) {
        print("The user's age is \(userAge)")
    } else {
        print("The age entered is not valid.")
    }
}
