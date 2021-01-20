//
//  ViewControllerNumber3.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/2/21.
//

import UIKit
import os.log

class ViewControllerNumber3: UIViewController, UINavigationControllerDelegate , UITextFieldDelegate{
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var editTextField: UITextField!
    var newProduct:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        editTextField.delegate = self
        editTextField.text = newProduct
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        // Set the meal to be passed to MealTableViewController after the unwind segue.
        newProduct = "new item goes here"
        
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        // Depending on style of presentation (modal or push presentation), this view controller needs to be dismissed in two different ways.
        let isPresentingInAddMealMode = presentingViewController is UINavigationController
            
        if isPresentingInAddMealMode {
            dismiss(animated: true, completion: nil)
        }
        else if let owningNavigationController = navigationController{
            owningNavigationController.popViewController(animated: true)
        }
        else {
            fatalError("The MealViewController is not inside a navigation controller.")
        }
    }

}
