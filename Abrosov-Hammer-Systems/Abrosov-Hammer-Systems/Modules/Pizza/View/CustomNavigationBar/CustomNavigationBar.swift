import UIKit
import SnapKit

class CustomNavigationBar: UIView {
    private let mainCityButton: UIButton = {
        var customCityButton = UIButton()
        customCityButton.setTitle("Москва ▽", for: .normal)
        customCityButton.setTitleColor(ApplicationColors.mainLightFont, for: .normal)
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
        self.addSubview(mainCityButton)
            
        mainCityButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(60)
        }
    }
}
