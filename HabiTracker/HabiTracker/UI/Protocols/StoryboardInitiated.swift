//
//  StoryboardInitiated.swift
//  HabiTracker
//
//  Created by Prefect on 30.07.2022.
//

import Foundation
import UIKit

protocol StoryboardInitiated {
  static var storyboardName: String { get }
  static var storyboardBundle: Bundle? { get }
  
  static func createFromStoryboard() -> Self
}

extension StoryboardInitiated where Self: UIViewController {
  static var storyboardName: String {
    return ""
  }
  
  static var storyboardBundle: Bundle? {
    return nil
  }
  
  static var storyboardIdentifier: String {
    return String(describing: self)
  }
  
  static func createFromStoryboard() -> Self {
    let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
    return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
  }
}

extension StoryboardInitiated where Self: WelcomeViewController {
  static var storyboardName: String {
    return "Welcome"
  }
}