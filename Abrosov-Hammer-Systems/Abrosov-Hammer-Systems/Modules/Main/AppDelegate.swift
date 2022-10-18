import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let tabBar = UITabBarController()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        let a = PizzaViewController()
        a.tabBarItem = UITabBarItem(title: "Меню", image: UIImage(named: "TabBarFirstItem"), selectedImage: UIImage(named: "TabBarFirstItem"))
        
        let b = PizzaViewController()
        b.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(named: "TabBarSecondItem"), selectedImage: UIImage(named: "TabBarSecondItem"))
        
        let c = PizzaViewController()
        c.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(named: "TabBarThirdItem"), selectedImage: UIImage(named: "TabBarThirdItem"))
        
        let d = PizzaViewController()
        d.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(named: "TabBarFourthItem"), selectedImage: UIImage(named: "TabBarFourthItem"))
        
        tabBar.setViewControllers([a, b, c, d], animated: true)
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()

        return true
    }
}
