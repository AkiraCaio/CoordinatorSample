//
//  Flow1Coordinator.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

import UIKit

protocol Flow1CoordinatorDelegate: AnyObject{
    func watsToScreen2()
    func watsToScreen3()
    func dismiss(animated: Bool)
    func endFlow(animated: Bool)
}

final class Flow1Coordinator: Coordinator {
    weak var parentCoordinator: PrimaryCoordinatorDelegate?
    
    var navigationController: UINavigationController?
    var currentViewController: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        vc.coordinator = self
        
        currentViewController = vc
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension Flow1Coordinator: Flow1CoordinatorDelegate {
    
    func dismiss(animated: Bool) {
        self.currentViewController = nil
        self.navigationController?.popViewController(animated: animated)
    }
    
    func watsToScreen2() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.coordinator = self
        
        currentViewController = vc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func watsToScreen3() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        vc.coordinator = self
        
        currentViewController = vc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func endFlow(animated: Bool) {
        self.currentViewController = nil
        self.navigationController?.popToRootViewController(animated: animated)
    }
}
