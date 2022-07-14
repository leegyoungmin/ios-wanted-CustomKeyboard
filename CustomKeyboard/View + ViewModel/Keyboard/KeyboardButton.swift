//
//  KeyboardButton.swift
//  CustomKeyboard
//
//  Created by yc on 2022/07/13.
//

import UIKit

class KeyboardButton: UIButton {
    
    let type: KeyboardButtonType
    var text: String?
    var chosung: Chosung?
    var jungsung: Jungsung?
    var jongsung: Jongsung?
    var isShift: Bool = false {
        willSet {
            setupShiftMode(newValue)
            setupButton()
        }
    }
    
    
    init(
        type: KeyboardButtonType,
        text: String? = nil,
        chosung: Chosung? = nil,
        jungsung: Jungsung? = nil,
        jongsung: Jongsung? = nil
    ) {
        self.type = type
        self.text = text
        self.chosung = chosung
        self.jungsung = jungsung
        self.jongsung = jongsung
        super.init(frame: .zero)
        setupButton()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        setTitle(text, for: .normal)
        setTitleColor(.label, for: .normal)
        backgroundColor = .white
        layer.cornerRadius = 4.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 1.0
        layer.shadowOpacity = 0.3
        layer.shadowOffset = .init(width: 0.0, height: 1.0)
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.1
        translatesAutoresizingMaskIntoConstraints = false
        let width = (UIScreen.main.bounds.width - 54.0) / 10
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setupShiftMode(_ isShift: Bool) {
        if isShift {
            switch chosung {
            case .ㅂ:
                chosung = .ㅃ
                text = "ㅃ"
            case .ㅈ:
                chosung = .ㅉ
                text = "ㅉ"
            case .ㄷ:
                chosung = .ㄸ
                text = "ㄸ"
            case .ㄱ:
                chosung = .ㄲ
                text = "ㄲ"
                jongsung = .ㄲ
            case .ㅅ:
                chosung = .ㅆ
                text = "ㅆ"
                jongsung = .ㅆ
            default: break
            }
        } else {
            switch chosung {
            case .ㅃ:
                chosung = .ㅂ
                text = "ㅂ"
            case .ㅉ:
                chosung = .ㅈ
                text = "ㅈ"
            case .ㄸ:
                chosung = .ㄷ
                text = "ㄷ"
            case .ㄲ:
                chosung = .ㄱ
                text = "ㄱ"
                jongsung = .ㄱ
            case .ㅆ:
                chosung = .ㅅ
                text = "ㅅ"
                jongsung = .ㅅ
            default: break
            }
        }
    }
}
