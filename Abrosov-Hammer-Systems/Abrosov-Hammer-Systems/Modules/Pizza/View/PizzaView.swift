import UIKit

protocol PizzaViewInput: AnyObject {

}

protocol PizzaViewOutput: AnyObject {
  func viewDidLoad()
}


final class PizzaViewController: UIViewController, ModuleTransitionable {

  // MARK: - Outlets


  // MARK: - Properties

  var output: PizzaViewOutput?

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

// MARK: - PizzaViewInput

extension PizzaViewController: PizzaViewInput {

}
