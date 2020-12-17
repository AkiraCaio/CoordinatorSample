//
//  ViewController2.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

import UIKit

class ViewController2: UIViewController {

    weak var coordinator: Flow1CoordinatorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        coordinator?.watsToScreen3()
    }
    
}
