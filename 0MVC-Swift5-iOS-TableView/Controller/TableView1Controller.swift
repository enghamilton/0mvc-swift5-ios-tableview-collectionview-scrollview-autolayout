//
//  TableView1Controller.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/1/21.
//

import UIKit

class TableView1Controller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.labelUsername.text = "username 1 hamilton"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            let alert3 = UIAlertController(title: "MVC Swift 5", message: "sample message here \(indexPath)", preferredStyle: .alert)
            let OKAction3 = UIAlertAction(title: "OK", style: .default, handler:nil)
            alert3.addAction(OKAction3)
            self.present(alert3, animated: true, completion: nil)
        }
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
