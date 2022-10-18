import UIKit

class BasicTabBar: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        generateTabBarControllers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        generateTabBarControllers()
    }
}

extension BasicTabBar {
    private func generateTabBarControllers() {
//        self.setViewControllers([generateVC(viewController: PizzaViewController(), title: "Pizza", image: UIImage(named: "Pizza-icon"),
//            selectedImage: UIImage(named: "Pizza-icon")
//    )], animated: <#T##Bool#>)
        
//        self.setViewControllers(
//            viewControllers: [
//                generateVC(
//                    viewController: PizzaViewController(),
//                    title: "Pizza",
//                    image: UIImage(named: "Pizza-icon"),
//                    selectedImage: UIImage(named: "Pizza-icon")
//            )],
//            animated: true
//        )
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?, selectedImage: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedImage
        return viewController
    }
}
