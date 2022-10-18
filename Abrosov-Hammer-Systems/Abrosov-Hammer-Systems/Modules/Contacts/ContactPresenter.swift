//
//  ContactPresenter.swift
//  Abrosov-Hammer-Systems
//
//  Created Сергей Абросов on 18.10.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ContactModuleInput: AnyObject {

}

protocol ContactModuleOutput: AnyObject {

}

final class ContactPresenter {

  // MARK: - Properties

  weak var view: ContactViewInput?
  var router: ContactRouterInput?
  weak var output: ContactModuleOutput?
}

// MARK: - ContactViewOutput

extension ContactPresenter: ContactViewOutput {

  func viewDidLoad() {

  }
}

// MARK: - ContactInput

extension ContactPresenter: ContactModuleInput {

}
