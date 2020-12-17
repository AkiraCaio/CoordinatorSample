//
//  ViewController1.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

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
