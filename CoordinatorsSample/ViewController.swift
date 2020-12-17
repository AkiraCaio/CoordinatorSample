//
//  ViewController.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

import UIKit

class ViewController: UIViewController {
    weak var coordinator: PrimaryCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didTapFlow1(_ sender: UIButton) {
        coordinator?.watsToFlow1()
    }
    
    @IBAction func didTapFlow2(_ sender: UIButton) {
        coordinator?.watsToFlow2()
    }
}

