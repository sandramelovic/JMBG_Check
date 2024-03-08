//
//  DataViewController.swift
//  JMBG
//
//  Created by Sandra Melovic on 12.11.23..
//

import UIKit

class DataViewController: UIViewController {
    
    private let dataView = DataView()
    var jmbgInfo: JMBG?
    var name: String?
    var surename: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataView.backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    
    override func loadView() {
        view = dataView
        
        dataView.userNameLabel.text = name
        dataView.userSurenameLabel.text = surename
        dataView.userGenderLabel.text = genderToString(jmbgInfo?.gender)
        dataView.userDateOfBirthLabel.text = jmbgInfo?.dateOfBirth
        dataView.userRegionLabel.text = jmbgInfo?.region.name
        dataView.userCityLabel.text = jmbgInfo?.region.city
    }
    
    private func genderToString(_ gender: Gender?) -> String {
        guard let gender = gender else {
            return "Unknown Gender"
        }
        
        switch gender {
        case .male:
            return "Male"
        case .female:
            return "Female"
        }
    }
    
    @objc private func backButtonPressed() {
        navigationController?.popViewController(animated: true)
        
        if let jmbgViewController = navigationController?.topViewController as? JMBGViewController {
                jmbgViewController.jmbgView.nameTextField.text = ""
                jmbgViewController.jmbgView.surenameTextField.text = ""
                jmbgViewController.jmbgView.jmbgTextField.text = ""
            }
    }
    
}
