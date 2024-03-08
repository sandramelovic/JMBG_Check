//
//  JMBGView.swift
//  JMBG
//
//  Created by Sandra Melovic on 12.11.23..
//

import UIKit

class JMBGView: UIView {
    
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Check your JMBG"
        view.accessibilityIdentifier = "text_title"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter your name here:"
        view.accessibilityIdentifier = "text_name"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameTextField: UITextField = {
        let view = UITextField()
        view.accessibilityIdentifier = "nameTextField"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.autocorrectionType = .no
        return view
    }()
    
    lazy var surenameLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter your surename here:"
        view.accessibilityIdentifier = "text_surename"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var surenameTextField: UITextField = {
        let view = UITextField()
        view.accessibilityIdentifier = "surenameTextField"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.autocorrectionType = .no
        return view
    }()
    
    lazy var jmbgLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter your JMBG here:"
        view.accessibilityIdentifier = "text_subtitle"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var jmbgTextField: UITextField = {
        let view = UITextField()
        view.accessibilityIdentifier = "textFieldJMBG"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var signature: UILabel = {
        let view = UILabel()
        view.text = "Sandra Melovic"
        view.accessibilityIdentifier = "text_signature"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton()
        view.setTitle("CHECK", for: .normal)
        view.accessibilityIdentifier = "button"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        setupView()
        styleView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(titleLabel)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(surenameLabel)
        addSubview(surenameTextField)
        addSubview(jmbgLabel)
        addSubview(jmbgTextField)
        addSubview(signature)
        addSubview(button)
        
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        
        nameTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        
        surenameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        surenameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        surenameLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        surenameLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 30).isActive = true
        
        surenameTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        surenameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        surenameTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        surenameTextField.topAnchor.constraint(equalTo: surenameLabel.bottomAnchor, constant: 5).isActive = true
        
        jmbgLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        jmbgLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        jmbgLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        jmbgLabel.topAnchor.constraint(equalTo: surenameTextField.bottomAnchor, constant: 30).isActive = true
        
        jmbgTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        jmbgTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        jmbgTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        jmbgTextField.topAnchor.constraint(equalTo: jmbgLabel.bottomAnchor, constant: 5).isActive = true
        
        signature.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signature.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signature.widthAnchor.constraint(equalToConstant: 300).isActive = true
        signature.topAnchor.constraint(equalTo: bottomAnchor, constant: -80).isActive = true
        
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.topAnchor.constraint(equalTo: jmbgTextField.bottomAnchor, constant: 50).isActive = true
        
        
    }
    
    private func styleView() {
        
        self.backgroundColor = UIColor.gray
        
        titleLabel.textColor = UIColor(hex: 0xf05bad)
        titleLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 30.0)
        titleLabel.textAlignment = .center
        titleLabel.adjustsFontSizeToFitWidth = true;
        titleLabel.minimumScaleFactor = 0.5
        
        nameLabel.textColor = .white
        nameLabel.font = UIFont(name: "Baskerville", size: 22.0)
        nameLabel.textAlignment = .left
        nameLabel.adjustsFontSizeToFitWidth = true;
        nameLabel.minimumScaleFactor = 0.5
        
        nameTextField.backgroundColor = .white
        nameTextField.layer.cornerRadius = 8.0
        nameTextField.layer.borderWidth = 2.0
        nameTextField.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        nameTextField.textColor = .black
        nameTextField.font = UIFont(name: "Baskerville", size: 20.0)
        nameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
        nameTextField.leftViewMode = .always
        nameTextField.textAlignment = .left
        
        surenameLabel.textColor = .white
        surenameLabel.font = UIFont(name: "Baskerville", size: 22.0)
        surenameLabel.textAlignment = .left
        surenameLabel.adjustsFontSizeToFitWidth = true;
        surenameLabel.minimumScaleFactor = 0.5
        
        surenameTextField.backgroundColor = .white
        surenameTextField.layer.cornerRadius = 8.0
        surenameTextField.layer.borderWidth = 2.0
        surenameTextField.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        surenameTextField.textColor = .black
        surenameTextField.font = UIFont(name: "Baskerville", size: 20.0)
        surenameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
        surenameTextField.leftViewMode = .always
        surenameTextField.textAlignment = .left
        
        jmbgLabel.textColor = .white
        jmbgLabel.font = UIFont(name: "Baskerville", size: 22.0)
        jmbgLabel.textAlignment = .left
        jmbgLabel.adjustsFontSizeToFitWidth = true;
        jmbgLabel.minimumScaleFactor = 0.5
        
        jmbgTextField.backgroundColor = .white
        jmbgTextField.layer.cornerRadius = 8.0
        jmbgTextField.layer.borderWidth = 2.0
        jmbgTextField.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        jmbgTextField.textColor = .black
        jmbgTextField.font = UIFont(name: "Baskerville", size: 20.0)
        jmbgTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
        jmbgTextField.leftViewMode = .always
        jmbgTextField.textAlignment = .left
        
        signature.textColor = UIColor(hex: 0xf05bad)
        signature.font = UIFont(name: "Zapfino", size: 40.0)
        signature.textAlignment = .right
        signature.adjustsFontSizeToFitWidth = true;
        signature.minimumScaleFactor = 0.5
        
        button.backgroundColor = UIColor(hex: 0xf05bad)
        button.layer.cornerRadius = 8.0
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Baskerville-SemiBold", size: 24.0)

        
    }
    
    
    
}

extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

