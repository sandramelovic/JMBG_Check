//
//  DataView.swift
//  JMBG
//
//  Created by Sandra Melovic on 12.11.23..
//

import UIKit

class DataView: UIView {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Data of your JMBG"
        view.accessibilityIdentifier = "text_title"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Name:"
        view.accessibilityIdentifier = "text_name"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userNameLabel: UILabel = {
        let view = UILabel()
        view.text = "Sandra"
        view.accessibilityIdentifier = "text_userName"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var surenameLabel: UILabel = {
        let view = UILabel()
        view.text = "Surename:"
        view.accessibilityIdentifier = "text_surename"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userSurenameLabel: UILabel = {
        let view = UILabel()
        view.text = "Melovic"
        view.accessibilityIdentifier = "text_userSurename"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var genderLabel: UILabel = {
        let view = UILabel()
        view.text = "Gender:"
        view.accessibilityIdentifier = "text_gender"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userGenderLabel: UILabel = {
        let view = UILabel()
        view.text = "Female"
        view.accessibilityIdentifier = "text_userGender"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var dateOfBirthLabel: UILabel = {
        let view = UILabel()
        view.text = "Date of Birth:"
        view.accessibilityIdentifier = "text_dateOfBirth"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userDateOfBirthLabel: UILabel = {
        let view = UILabel()
        view.text = "25.10.2000"
        view.accessibilityIdentifier = "text_userDateOfBirth"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var regionLabel: UILabel = {
        let view = UILabel()
        view.text = "Region:"
        view.accessibilityIdentifier = "text_region"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userRegionLabel: UILabel = {
        let view = UILabel()
        view.text = "Srbija"
        view.accessibilityIdentifier = "text_userRegion"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var cityLabel: UILabel = {
        let view = UILabel()
        view.text = "City:"
        view.accessibilityIdentifier = "text_city"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userCityLabel: UILabel = {
        let view = UILabel()
        view.text = "Novi Sad"
        view.accessibilityIdentifier = "text_userCity"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var backButton: UIButton = {
        let view = UIButton()
        view.setTitle("Back", for: .normal)
        view.setTitleColor(.blue, for: .normal)
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
        addSubview(userNameLabel)
        addSubview(surenameLabel)
        addSubview(userSurenameLabel)
        addSubview(genderLabel)
        addSubview(userGenderLabel)
        addSubview(dateOfBirthLabel)
        addSubview(userDateOfBirthLabel)
        addSubview(regionLabel)
        addSubview(userRegionLabel)
        addSubview(backButton)
        addSubview(cityLabel)
        addSubview(userCityLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        
        userNameLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        userNameLabel.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: -170).isActive = true
        userNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userNameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        surenameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        surenameLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        surenameLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        surenameLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 10).isActive = true
        
        userSurenameLabel.centerYAnchor.constraint(equalTo: surenameLabel.centerYAnchor).isActive = true
        userSurenameLabel.leftAnchor.constraint(equalTo: surenameLabel.rightAnchor, constant: -170).isActive = true
        userSurenameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userSurenameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        genderLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        genderLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        genderLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        genderLabel.topAnchor.constraint(equalTo: userSurenameLabel.bottomAnchor, constant: 10).isActive = true
        
        userGenderLabel.centerYAnchor.constraint(equalTo: genderLabel.centerYAnchor).isActive = true
        userGenderLabel.leftAnchor.constraint(equalTo: genderLabel.rightAnchor, constant: -170).isActive = true
        userGenderLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userGenderLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        dateOfBirthLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        dateOfBirthLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        dateOfBirthLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        dateOfBirthLabel.topAnchor.constraint(equalTo: userGenderLabel.bottomAnchor, constant: 10).isActive = true
        
        userDateOfBirthLabel.centerYAnchor.constraint(equalTo: dateOfBirthLabel.centerYAnchor).isActive = true
        userDateOfBirthLabel.leftAnchor.constraint(equalTo: dateOfBirthLabel.rightAnchor, constant: -170).isActive = true
        userDateOfBirthLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userDateOfBirthLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        regionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        regionLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        regionLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        regionLabel.topAnchor.constraint(equalTo: userDateOfBirthLabel.bottomAnchor, constant: 10).isActive = true
        
        userRegionLabel.centerYAnchor.constraint(equalTo: regionLabel.centerYAnchor).isActive = true
        userRegionLabel.leftAnchor.constraint(equalTo: regionLabel.rightAnchor, constant: -170).isActive = true
        userRegionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userRegionLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        cityLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        cityLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cityLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        cityLabel.topAnchor.constraint(equalTo: userRegionLabel.bottomAnchor, constant: 10).isActive = true
        
        userCityLabel.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor).isActive = true
        userCityLabel.leftAnchor.constraint(equalTo: cityLabel.rightAnchor, constant: -170).isActive = true
        userCityLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        userCityLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        backButton.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
        backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 85).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    private func styleView() {
        self.backgroundColor = UIColor.gray
        
        titleLabel.textColor = UIColor(hex: 0xf05bad)
        titleLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 30.0)
        titleLabel.textAlignment = .center
        titleLabel.adjustsFontSizeToFitWidth = true;
        titleLabel.minimumScaleFactor = 0.5
        
        nameLabel.textColor = UIColor(hex: 0xf05bad)
        nameLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        nameLabel.textAlignment = .left
        nameLabel.adjustsFontSizeToFitWidth = true;
        nameLabel.minimumScaleFactor = 0.5
        
        userNameLabel.backgroundColor = .white
        userNameLabel.layer.borderWidth = 2.0
        userNameLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userNameLabel.textColor = .black
        userNameLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        surenameLabel.textColor = UIColor(hex: 0xf05bad)
        surenameLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        surenameLabel.textAlignment = .left
        surenameLabel.adjustsFontSizeToFitWidth = true;
        surenameLabel.minimumScaleFactor = 0.5
        
        userSurenameLabel.backgroundColor = .white
        userSurenameLabel.layer.borderWidth = 2.0
        userSurenameLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userSurenameLabel.textColor = .black
        userSurenameLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        genderLabel.textColor = UIColor(hex: 0xf05bad)
        genderLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        genderLabel.textAlignment = .left
        genderLabel.adjustsFontSizeToFitWidth = true;
        genderLabel.minimumScaleFactor = 0.5
        
        userGenderLabel.backgroundColor = .white
        userGenderLabel.layer.borderWidth = 2.0
        userGenderLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userGenderLabel.textColor = .black
        userGenderLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        dateOfBirthLabel.textColor = UIColor(hex: 0xf05bad)
        dateOfBirthLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        dateOfBirthLabel.textAlignment = .left
        dateOfBirthLabel.adjustsFontSizeToFitWidth = true;
        dateOfBirthLabel.minimumScaleFactor = 0.5
        
        userDateOfBirthLabel.backgroundColor = .white
        userDateOfBirthLabel.layer.borderWidth = 2.0
        userDateOfBirthLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userDateOfBirthLabel.textColor = .black
        userDateOfBirthLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        regionLabel.textColor = UIColor(hex: 0xf05bad)
        regionLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        regionLabel.textAlignment = .left
        regionLabel.adjustsFontSizeToFitWidth = true;
        regionLabel.minimumScaleFactor = 0.5
        
        userRegionLabel.backgroundColor = .white
        userRegionLabel.layer.borderWidth = 2.0
        userRegionLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userRegionLabel.textColor = .black
        userRegionLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        cityLabel.textColor = UIColor(hex: 0xf05bad)
        cityLabel.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22.0)
        cityLabel.textAlignment = .left
        cityLabel.adjustsFontSizeToFitWidth = true;
        cityLabel.minimumScaleFactor = 0.5
        
        userCityLabel.backgroundColor = .white
        userCityLabel.layer.borderWidth = 2.0
        userCityLabel.layer.borderColor = UIColor(hex: 0xf05bad).cgColor
        userCityLabel.textColor = .black
        userCityLabel.font = UIFont(name: "Baskerville", size: 20.0)
        
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = UIColor(hex: 0xf05bad) // Set your desired background color
        backButton.layer.cornerRadius = 8.0 // Set the corner radius for a rounded appearance
        backButton.titleLabel?.font = UIFont(name: "Baskerville", size: 18.0)
        
        
        
    }
    
}
