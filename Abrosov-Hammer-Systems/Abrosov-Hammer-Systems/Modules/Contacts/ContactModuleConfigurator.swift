//
//  ContactModuleConfigurator.swift
//  Abrosov-Hammer-Systems
//
//  Created Сергей Абросов on 18.10.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ContactModuleConfigurator {

  // MARK: - Configure

  func configure(
    output: ContactModuleOutput? = nil
  ) -> (
    view: ContactViewController,
    input: ContactModuleInput
  ) {
    let view = ContactViewController()
    let presenter = ContactPresenter()
    let router = ContactRouter()

    presenter.view = view
    presenter.router = router
    presenter.output = output

    router.view = view

    view.output = presenter

    return (view, presenter)
  }
}

