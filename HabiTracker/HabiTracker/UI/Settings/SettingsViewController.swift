//
//  SettingsViewController.swift
//  HabiTracker
//
//  Created by Georgie Muler on 05.08.2022.
//

import UIKit

class SettingsViewController: UIViewController {
  
  // MARK: - Properties
  private var viewModel: SettingsViewModel?

  // MARK: - View Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
  }
  
  // MARK: - Helpers
  func configure(_ viewModel: SettingsViewModel) {
    self.viewModel = viewModel
  }
  
  private func bind() {
    let viewModel = SettingsViewModel()
    let output = viewModel.transform(.init())
  }

}
