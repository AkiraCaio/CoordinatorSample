//
//  Coordinator.swift
//  CoordinatorsSample
//
//  Created by Caio Vinicius Pinho Vasconcelos - CVS on 16/12/20.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    var currentViewController: UIViewController? { get set }
    func start()
}

protocol ParentCoordinator: Coordinator {
    var childCoordinator: Coordinator? { get set }
}

