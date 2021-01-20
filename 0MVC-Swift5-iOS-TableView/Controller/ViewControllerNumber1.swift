//
//  ViewControllerNumber1.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/2/21.
//

import UIKit

class ViewControllerNumber1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedButton (_ sender: UIButton) {
        let alert1 = UIAlertController(title: "MVC Swift 5", message: "sample message here", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler:nil)
        /*
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: {
                (_) in
                self.performSegue(withIdentifier: "segueForSomeViewController", sender: self)
        })
        */
        alert1.addAction(OKAction)
        present(alert1, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
