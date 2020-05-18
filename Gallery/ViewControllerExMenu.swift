//
//  ViewControllerExMenu.swift
//  Galley
//
//  Created by Динара Валиуллина on 17/05/2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

struct Item {
    var imageName: String
}

class ViewControllerExMenu: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var items: [Item] = [Item(imageName: "7"), Item(imageName: "8"), Item(imageName: "9"), Item(imageName: "7"), Item(imageName: "8"), Item(imageName: "9"), Item(imageName: "7"), Item(imageName: "8"), Item(imageName: "9")]
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let cellIdentifier = "itemCollectionViewCell"
    let viewImageSegueiIdentifier = "viewImageSegueiIdentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewItemSize()
    }
    
    private func  setupCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib = UINib(nibName: "itemCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    private func setupCollectionViewItemSize() {
        if collectionViewFlowLayout == nil {
            let numberOfItemPerRow: CGFloat = 3
            let lineSpacing: CGFloat = 5
            let interItemSpacing: CGFloat = 5
            
            let width = (collectionView.frame.width - (numberOfItemPerRow - 1) * interItemSpacing) / numberOfItemPerRow
            
            let height = width
            
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .vertical
            collectionViewFlowLayout.minimumLineSpacing = lineSpacing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
            
            collectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }


}
extension ViewControllerExMenu: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! itemCollectionViewCell
               
               cell.imageView.image = UIImage(named: items[indexPath.item].imageName)
               return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = items [indexPath.item]
        performSegue(withIdentifier: viewImageSegueiIdentifier, sender: item)
    }
    
    
    
    
}
