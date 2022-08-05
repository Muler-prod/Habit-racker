//
//  DiagramsViewController.swift
//  HabiTracker
//
//  Created by Georgie Muler on 05.08.2022.
//

import UIKit

class DiagramsViewController: UIViewController {
  
  // MARK: - Properties
  private var viewModel: DiagramsViewModel?

  // MARK: - View Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    bind()
  }
  
  // MARK: - Helpers
  func configure(_ viewModel: DiagramsViewModel) {
    self.viewModel = viewModel
  }
  
  private func bind() {
    let viewModel = DiagramsViewModel()
    let output = viewModel.transform(.init())
  }

}
