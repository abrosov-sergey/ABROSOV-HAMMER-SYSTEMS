import UIKit

final class NoteModuleConfigurator {

  // MARK: - Configure

  func configure(
    output: PizzaModuleOutput? = nil
  ) -> (
    view: PizzaViewController,
    input: PizzaModuleInput
  ) {
    let view = PizzaViewController()
    let presenter = PizzaPresenter()
    let router = PizzaRouter()

    presenter.view = view
    presenter.router = router
    presenter.output = output

    router.view = view

    view.output = presenter

    return (view, presenter)
  }
}
