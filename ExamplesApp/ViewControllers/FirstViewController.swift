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

    // MARK: - Actions
    
    @IBAction func showGreeting(_ sender: UIButton) {
    }
    
}

