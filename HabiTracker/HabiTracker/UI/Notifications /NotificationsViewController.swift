//
//  NotificationsViewController.swift
//  HabiTracker
//
//  Created by Georgie Muler on 05.08.2022.
//

import UIKit

class NotificationsViewController: UIViewController, StoryboardInitiated {
  
  // MARK: - Properties
  private var viewModel: NotificationsViewModel?

  // MARK: - View Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
  }
  
  // MARK: - Helpers
  func configure(_ viewModel: NotificationsViewModel) {
    self.viewModel = viewModel
  }
  
  private func bind() {
    let viewModel = NotificationsViewModel()
    let output = viewModel.transform(.init())
  }

}
