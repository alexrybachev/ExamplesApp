//
//  FirstViewController.swift
//  ExamplesApp
//
//  Created by Aleksandr Rybachev on 26.11.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Oulets
    @IBOutlet var textFields: [UITextField]!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SecondViewController else { return }
        vc.personName = " tim"
    }

    // MARK: - Actions
    
    @IBAction func showGreeting(_ sender: UIButton) {
        
        if textFields.first?.text != nil, textFields.last?.text != nil {
            performSegue(withIdentifier: "showVC", sender: nil)
        } else {
            return
        }
        
//        if textFields.
        
//        let vc = SecondViewController()
//        present(vc, animated: true)
//        vc.personName = "Tim"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        textFields.forEach { textField in
            textField.text = nil
        }
    }
    
}

// MARK: - UITextFieldDelegate
extension FirstViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 0:
            print("textField first")
//            textFields.last?.becomeFirstResponder()
        default:
            view.endEditing(true)
            print("textField second")
//            dismiss(animated: true)
        }
        return true
    }
    
}
