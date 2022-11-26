//
//  SecondViewController.swift
//  ExamplesApp
//
//  Created by Aleksandr Rybachev on 26.11.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Actions
    @IBAction func closeView(_ sender: UIButton) {
    }
    

}
