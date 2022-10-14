protocol PizzaModuleInput: AnyObject {

}

protocol PizzaModuleOutput: AnyObject {

}

final class PizzaPresenter {

  // MARK: - Properties

  weak var view: PizzaViewInput?
  var router: PizzaRouterInput?
  weak var output: PizzaModuleOutput?
}

// MARK: - NoteViewOutput

extension PizzaPresenter: PizzaViewOutput {

  func viewDidLoad() {

  }
}

// MARK: - NoteInput

extension PizzaPresenter: PizzaModuleInput {

}
