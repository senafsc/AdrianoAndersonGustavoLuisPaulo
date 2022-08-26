//
//  IssueVisualizationViewController.swift
//  AdrianoAndersonGustavoLuisPaulo
//
//  Created by user219898 on 8/25/22.
//

import UIKit

class IssueVisualizationViewController: UIViewController {

    @IBOutlet weak var textFieldTitle: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textViewDescription: UITextView!
    @IBOutlet weak var buttonSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func save(_ sender: UIButton) {
        print("Clicou no botão SALVAR")
    }


}

