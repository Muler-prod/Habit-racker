//
//  WelcomeViewController.swift
//  HabiTracker
//
//  Created by Prefect on 30.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController, StoryboardInitiated {
  
  // MARK: - Properties
  private var viewModel: WelcomeViewModel?

  // MARK: - View Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
  }
  
  // MARK: - Helpers
  func configure(_ viewModel: WelcomeViewModel) {
    self.viewModel = viewModel
  }
  
  private func bind() {
    let viewModel = WelcomeViewModel()
    let output = viewModel.transform(.init())
  }

}
