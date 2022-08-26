//
//  UIViewController+Context.swift
//  AdrianoAndersonGustavoLuisPaulo
//
//  Created by user219898 on 8/25/22.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
