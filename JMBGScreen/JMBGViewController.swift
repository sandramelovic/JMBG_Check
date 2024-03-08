//
//  JMBGViewController.swift
//  JMBG
//
//  Created by Sandra Melovic on 12.11.23..
//

import UIKit

class JMBGViewController: UIViewController {
    
    internal let jmbgView = JMBGView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jmbgView.button.addTarget(self, action: #selector(checkButtonPressed), for: .touchUpInside)
        
        
    }
    
    override func loadView() {
        view = jmbgView
    }
    
    @objc func checkButtonPressed() {
        guard let name = jmbgView.nameTextField.text, !name.isEmpty,
                  let surename = jmbgView.surenameTextField.text, !surename.isEmpty else {
                showAlert(message: "Please enter both name and surename")
                return
            }
        
        if let jmbg = jmbgView.jmbgTextField.text,
               let (jmbgInfo, errorMessage) = validateJMBG(jmbg) {
                if let jmbgInfo = jmbgInfo {
                    showJMBGInfo(jmbgInfo, name: name, surename: surename)
                } else {
                    showAlert(message: errorMessage )
                }
            } else {
                showAlert(message: "Invalid JMBG")
            }
    }
    
    private func showJMBGInfo(_ info: JMBG, name:String, surename:String) {
        let dataViewController = DataViewController()
        dataViewController.jmbgInfo = info
        dataViewController.name = name
        dataViewController.surename = surename
        navigationController?.pushViewController(dataViewController, animated: true)
        
    }
    
     func showAlert(message: String) {
        print("Validation Failed: \(message)")
            let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
    }
    
    
}



