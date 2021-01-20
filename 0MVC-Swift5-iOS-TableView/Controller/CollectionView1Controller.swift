//
//  CollectionView1Controller.swift
//  0MVC-Swift5-iOS-TableView
//
//  Created by user189204 on 1/6/21.
//

import UIKit

class CollectionView1Controller: UIViewController, UICollectionViewDataSource {

    var imgArray:[String] = ["image01", "image02", "image03"]
    let identifier:String = "reuseIdentifierCollection1"
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView1.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionCell:CollectionView1Cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CollectionView1Cell
        collectionCell.imageCollectionView1.image = UIImage(named: imgArray[indexPath.row])
        
        return collectionCell
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
