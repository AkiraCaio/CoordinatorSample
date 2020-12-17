//
//  PrimaryCoordinator.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

import UIKit

protocol PrimaryCoordinatorDelegate: AnyObject {
    func watsToFlow1()
    func watsToFlow2()
    func childDidFinish()
}

final class PrimaryCoordinator: NSObject, ParentCoordinator  {
    var childCoordinator: Coordinator?
    var navigationController: UINavigationController?
    var currentViewController: UIViewController?
    
    override init() {
        self.navigationController = UINavigationController()
    }
    
    func start() {
        navigationController?.delegate = self
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.coordinator = self
        
        currentViewController = vc
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension PrimaryCoordinator: PrimaryCoordinatorDelegate {
    
    func watsToFlow1() {
        let child = Flow1Coordinator(navigationController: navigationController ?? UINavigationController())
        childCoordinator = child
        
        child.start()
    }
    
    //TODO: Try to implement the second flow
    func watsToFlow2() {
        
    }
    
    func childDidFinish() {
        self.childCoordinator = nil
        
    }
}

extension PrimaryCoordinator: UINavigationControllerDelegate {
    //TODO: Try to implement the second flow
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
        if let _ = fromViewController as? ViewController3 {
            childDidFinish()
        }
    }
}
