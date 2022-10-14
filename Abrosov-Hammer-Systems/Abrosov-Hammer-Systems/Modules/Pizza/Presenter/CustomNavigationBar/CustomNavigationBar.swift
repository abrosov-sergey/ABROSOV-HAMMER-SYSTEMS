import UIKit
import SnapKit

class customNavigationBar: UIView {
    private let mainNavigationBar: UIView = {
        let customNavigationBarView = UIView()
        return customNavigationBarView
    }()
    
    private let mainCityButton: UIButton = {
        var customCityButton = UIButton()
        customCityButton.setTitle("Москва ▽", for: .normal)
        return customCityButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configUI() {
        self.addSubview(mainNavigationBar)
        self.addSubview(mainCityButton)
        
        mainNavigationBar.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(safeAreaInsets)
            make.width.equalTo(200)
        }
        
        mainCityButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalTo(safeAreaInsets).inset(30)
        }
    }
}
