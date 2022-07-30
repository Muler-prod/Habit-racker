//
//  ViewModelType.swift
//  HabiTracker
//
//  Created by Prefect on 30.07.2022.
//

protocol ViewModelType {
  associatedtype Input
  associatedtype Output
  func transform(_ input: Input) -> Output
}
