import UIKit

class ViewController3: UIViewController {

    weak var coordinator: Flow1CoordinatorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        coordinator?.endFlow(animated: true)
    }
}
