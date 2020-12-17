import UIKit

class BaseViewController: UIViewController {
    weak var coordinator: PrimaryCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func didTapFlow1(_ sender: UIButton) {
        coordinator?.watsToFlow1()
    }
    
    @IBAction func didTapFlow2(_ sender: UIButton) {
        coordinator?.watsToFlow2()
    }
}

