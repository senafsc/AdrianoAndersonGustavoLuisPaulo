//
//  IssueVisualizationViewController.swift
//  AdrianoAndersonGustavoLuisPaulo
//
//  Created by Anderson André dos Santos on 26/08/22.
//

import UIKit

final class IssueVisualizationViewController: UIViewController {
    
    
    @IBOutlet weak var textViewTitulo: UITextView!
    
    @IBOutlet weak var textViewData: UITextView!
    
    @IBOutlet weak var textViewEndereco: UITextView!
    
    @IBOutlet weak var textViewDescricao: UITextView!
    
    var issue: Issue?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let issue = issue {
        textViewTitulo.text = issue.title
        textViewData.text = issue.date
        textViewEndereco.text = issue.adress
        textViewDescricao.text = issue.desc
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? IssueFormViewController else { return }
        vc.issue = issue
    }
    
    
}
