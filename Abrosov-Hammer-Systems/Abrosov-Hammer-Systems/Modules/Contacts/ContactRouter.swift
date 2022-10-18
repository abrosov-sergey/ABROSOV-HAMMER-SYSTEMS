//
//  ContactRouter.swift
//  Abrosov-Hammer-Systems
//
//  Created Сергей Абросов on 18.10.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
import UIKit

protocol ContactRouterInput {

}

final class ContactRouter {

  // MARK: - Properties

  weak var view: ModuleTransitionable?
}

// MARK: - ContactRouterInput

extension ContactRouter: ContactRouterInput {

}

