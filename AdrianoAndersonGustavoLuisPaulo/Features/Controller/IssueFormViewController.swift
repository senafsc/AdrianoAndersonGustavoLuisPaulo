//
//  IssueVisualizationViewController.swift
//  AdrianoAndersonGustavoLuisPaulo
//
//  Created by user219898 on 8/25/22.
//

import UIKit

class IssueFormViewController: UIViewController {

    @IBOutlet weak var textFieldTitle: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldAdress: UITextField!
    @IBOutlet weak var textViewDescription: UITextView!
    @IBOutlet weak var buttonSave: UIButton!
    
    var issue: Issue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let issue = issue {
            textFieldTitle.text = issue.title
            textFieldDate.text = issue.date
            textFieldAdress.text = issue.adress
            textViewDescription.text = issue.desc
            
            title = "Editar reclamação"
            buttonSave.setTitle("Atualizar", for: .normal)
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        if issue == nil {
            issue = Issue(context: context)
        }
        
        issue?.title = textFieldTitle.text
        issue?.date = textFieldDate.text
        issue?.adress = textFieldAdress.text
        issue?.desc = textViewDescription.text
        
        do {
            try context.save()
            navigationController?.popViewController(animated: true)
        } catch {
            print(error)
        }
        
    }


}

