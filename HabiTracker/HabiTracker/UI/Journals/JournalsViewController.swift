//
//  WelcomeViewController.swift
//  HabiTracker
//
//  Created by Prefect on 30.07.2022.
//

import UIKit

class JournalsViewController: UIViewController, StoryboardInitiated {
  
  // MARK: - Properties
  private var viewModel: JournalsViewModel?

  // MARK: - View Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
  }
  
  // MARK: - Helpers
  func configure(_ viewModel: JournalsViewModel) {
    self.viewModel = viewModel
  }
  
  private func bind() {
    let viewModel = JournalsViewModel()
    let output = viewModel.transform(.init())
  }

}
