import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var miLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func mostrarTexto(_ sender: UIButton) {
        miLabel.text = nombreTextField.text
    }
}
