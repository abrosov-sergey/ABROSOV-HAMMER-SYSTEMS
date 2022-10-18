//
//  ContactViewController.swift
//  Abrosov-Hammer-Systems
//
//  Created Сергей Абросов on 18.10.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ContactViewInput: AnyObject {

}

protocol ContactViewOutput: AnyObject {
  func viewDidLoad()
}


final class ContactViewController: UIViewController, ModuleTransitionable {

  // MARK: - Outlets


  // MARK: - Properties

  var output: ContactViewOutput?

  // MARK: - UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()
    output?.viewDidLoad()
  }

  // MARK: - Actions


  // MARK: - Setup

  private func setupUI() {

  }

  private func setupLocalization() {

  }
}

// MARK: - TroikaServiceViewInput

extension ContactViewController: ContactViewInput {

}
