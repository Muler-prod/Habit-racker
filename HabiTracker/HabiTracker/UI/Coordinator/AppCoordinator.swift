//
//  AppCoordinator.swift
//  HabiTracker
//
//  Created by Prefect on 30.07.2022.
//

import UIKit

class AppCoordinator: Coordinator {
    
  private var window: UIWindow
  private var navigationController: UINavigationController?
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    
    let viewController = JournalsViewController.createFromStoryboard()
    let viewModel = JournalsViewModel()
    viewController.configure(viewModel)
    navigationController = UINavigationController(rootViewController: viewController)
    window.rootViewController = navigationController
    window.makeKeyAndVisible()
  }
}
