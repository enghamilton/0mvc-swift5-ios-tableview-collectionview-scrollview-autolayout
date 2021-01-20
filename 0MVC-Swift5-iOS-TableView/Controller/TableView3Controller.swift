//
//  TableView3Controller.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/10/21.
//

import UIKit

class TableView3Controller: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView3: UITableView!
    let reuse:String = "reuseIdentifierCell3"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchBar?.delegate = self
        tableView3.dataSource = self
        tableView3.register(UINib(nibName: "TableView3Cell", bundle: nil), forCellReuseIdentifier: "reuseIdentifierCell3")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView3.dequeueReusableCell(withIdentifier: reuse, for: indexPath) as! TableView3Cell
        cell.labelTableView3Cell.text = "simple demo"
        
        return cell
    }
    
    func connectDatabase() {
        
    }

}

extension TableView3Controller: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

extension TableView3Controller: UISearchBarDelegate {
    
    
}
