import UIKit

protocol PizzaViewInput: AnyObject {

}

protocol PizzaViewOutput: AnyObject {
  func viewDidLoad()
}


final class PizzaViewController: UIViewController, ModuleTransitionable {

  // MARK: - UI

    private lazy var mainNavBar: CustomNavigationBar = {
        var customNavBar = CustomNavigationBar()
        return customNavBar
    }()
    
//    private var mainTabBar: BasicTabBar = {
//        var tabBar = BasicTabBar()
//        return tabBar
//    }()

  // MARK: - Properties

  var output: PizzaViewOutput?

  // MARK: - UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()
    output?.viewDidLoad()
      
      setupUI()
  }

  // MARK: - Actions


  // MARK: - Setup

  private func setupUI() {
      view.backgroundColor = ApplicationColors.mainLightBackgroundColor
      
      view.addSubview(mainNavBar)
      
      //mainTabBar.modalPresentationStyle = .fullScreen
      //present(BasicTabBar(), animated: true)
      
      makeConstraints()
  }

  private func makeConstraints() {
      mainNavBar.snp.makeConstraints { make in
          make.top.equalTo(self.view.safeAreaInsets)
          make.trailing.leading.equalToSuperview()
          make.height.equalTo(70)
      }
  }
}

// MARK: - PizzaViewInput

extension PizzaViewController: PizzaViewInput {

}
