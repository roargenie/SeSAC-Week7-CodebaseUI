

import UIKit
import SnapKit



class ViewController: UIViewController {
    
    let closeButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "gift"), for: .normal)
        view.tintColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    let qrButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "command.square"), for: .normal)
        view.tintColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "gearshape"), for: .normal)
        view.tintColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    let selfChatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "message.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let profileSettingButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "homekit"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        view.image = UIImage(named: "profile")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    let userNameLabel: UILabel = {
        let view = UILabel()
        view.text = " rOar "
        view.textAlignment = .center
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 22)
        return view
    }()
    
    let selfChatLabel: UILabel = {
        let view = UILabel()
        view.text = " 나와의 채팅 "
        view.textAlignment = .center
        view.textColor = .white
        view.font = .systemFont(ofSize: 15)
        return view
    }()
    
    let profileSettingLabel: UILabel = {
        let view = UILabel()
        view.text = " 프로필 편집 "
        view.textAlignment = .center
        view.textColor = .white
        view.font = .systemFont(ofSize: 15)
        return view
    }()
    
    let kakaoStoryLabel: UILabel = {
        let view = UILabel()
        view.text = " 카카오스토리 "
        view.textAlignment = .center
        view.textColor = .white
        view.font = .systemFont(ofSize: 15)
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray4
        configureUI()
    }
    
    func configureUI() {
        [
            closeButton, giftButton, qrButton, settingButton,
            selfChatButton, profileSettingButton, kakaoStoryButton, profileImageView,
            userNameLabel, selfChatLabel, profileSettingLabel, kakaoStoryLabel, lineView
        ].forEach { view.addSubview($0) }
        
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.equalTo(20)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        giftButton.snp.makeConstraints { make in
            make.centerY.equalTo(closeButton.snp.centerY)
            //make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(qrButton.snp.leading).offset(-20)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        qrButton.snp.makeConstraints { make in
            make.centerY.equalTo(closeButton.snp.centerY)
            //make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(settingButton.snp.leading).offset(-20)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        settingButton.snp.makeConstraints { make in
            make.centerY.equalTo(closeButton.snp.centerY)
            //make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(view.snp.trailing).offset(-20)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.bottom.equalTo(userNameLabel.snp.top).offset(-15)
            make.centerX.equalTo(view)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
            make.height.equalTo(profileImageView.snp.width)
        }
        
        userNameLabel.snp.makeConstraints { make in
            make.bottom.equalTo(lineView.snp.top).offset(-60)
            make.centerX.equalTo(view)
        }
        
        lineView.snp.makeConstraints { make in
            make.bottom.equalTo(profileSettingButton.snp.top).offset(-25)
            make.leading.equalTo(view.snp.leading).offset(0)
            make.trailing.equalTo(view.snp.trailing).offset(0)
            make.height.equalTo(1)
        }
        
        selfChatButton.snp.makeConstraints { make in
            make.centerX.equalTo(selfChatLabel.snp.centerX)
            make.bottom.equalTo(selfChatLabel.snp.top).offset(-10)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        profileSettingButton.snp.makeConstraints { make in
            make.centerX.equalTo(profileSettingLabel.snp.centerX)
            make.bottom.equalTo(profileSettingLabel.snp.top).offset(-10)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        kakaoStoryButton.snp.makeConstraints { make in
            make.centerX.equalTo(kakaoStoryLabel.snp.centerX)
            make.bottom.equalTo(kakaoStoryLabel.snp.top).offset(-10)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        selfChatLabel.snp.makeConstraints { make in
            make.centerY.equalTo(profileSettingLabel.snp.centerY)
            make.trailing.equalTo(profileSettingLabel.snp.leading).offset(-40)
        }
        
        profileSettingLabel.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-30)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(view).multipliedBy(0.2)
        }
        
        kakaoStoryLabel.snp.makeConstraints { make in
            make.centerY.equalTo(profileSettingLabel.snp.centerY)
            make.leading.equalTo(profileSettingLabel.snp.trailing).offset(40)
        }
        
        
        
    }
    
    
    
    
    
}

