import UIKit

class ViewController1: UIViewController {

    weak var coordinator: Flow1CoordinatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        coordinator?.watsToScreen2()
    }
    
}
