import UIKit

class ViewController2: UIViewController {

    weak var coordinator: Flow1CoordinatorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        coordinator?.watsToScreen3()
    }
    
}
