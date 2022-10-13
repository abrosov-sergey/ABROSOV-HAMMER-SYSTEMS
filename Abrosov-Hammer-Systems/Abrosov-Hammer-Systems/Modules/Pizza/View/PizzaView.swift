import UIKit

protocol NoteViewInput: AnyObject {

}

protocol NoteViewOutput: AnyObject {
  func viewDidLoad()
}


final class NoteViewController: UIViewController, ModuleTransitionable {

  // MARK: - Outlets


  // MARK: - Properties

  var output: NoteViewOutput?

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

extension NoteViewController: NoteViewInput {

}
