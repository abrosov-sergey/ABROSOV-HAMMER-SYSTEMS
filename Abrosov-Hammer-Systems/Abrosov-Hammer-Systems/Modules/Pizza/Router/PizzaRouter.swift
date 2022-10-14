import UIKit

protocol PizzaRouterInput {

}

final class PizzaRouter {

  // MARK: - Properties

  weak var view: ModuleTransitionable?
}

// MARK: - PizzaRouterInput

extension PizzaRouter: PizzaRouterInput {

}
