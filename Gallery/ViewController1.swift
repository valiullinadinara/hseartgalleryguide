

import UIKit
class ViewController1: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var data = [Data]()
    
    @IBOutlet weak var colView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath) as! CollectionViewCell_one
        
//        cell1.ingCell.layer.cornerRadius = 8
//        cell1.contentView.layer.cornerRadius = 4.0
//             cell1.layer.borderWidth = 1.0
//             cell1.layer.borderColor = UIColor.clear.cgColor
//             cell1.layer.shadowColor = UIColor.gray.cgColor
//             cell1.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//             cell1.layer.shadowRadius = 4.0
//        cell1.layer.shadowOpacity = 0.8
//             cell1.layer.masksToBounds = false
//             cell1.layer.shadowPath = UIBezierPath(roundedRect: cell1.bounds, cornerRadius: cell1.contentView.layer.cornerRadius).cgPath
        
        
        
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath) as! CollectionViewCell_thre
        
        
        if indexPath.row == 0 {
            let point1 = data[indexPath.row] as Data
            cell1.lable1.text = point1.name// берем из базы фотку и название
            cell1.ingCell.image = point1.photo
            cell1.textOne.text = point1.text//String(indexPath.row) берем из базы фотку и название
            //cell1.ingCell.image = UIImage(named: "7-2 5.png")
        } else if indexPath.row == 4 {
            let point2 = data[indexPath.row] as Data
            cell1.lable1.text = point2.name// берем из базы фотку и название
            cell1.ingCell.image = point2.photo
            cell1.textOne.text = point2.text
            
        }
        
        if indexPath.row == 1 {
            
            let point3 = data[indexPath.row] as Data
            cell1.ingCell.image = point3.photo
            cell1.lable1.text = point3.name
            cell1.textOne.text = point3.text
//            cell1.ingCell.layer.cornerRadius = 8
            
            return cell1
        } else if indexPath.row == 2 {
            let point4 = data[indexPath.row] as Data
            cell1.lable1.text = point4.name// берем из базы фотку и название
            cell1.ingCell.image = point4.photo
            cell1.textOne.text = point4.text
//            cell1.ingCell.layer.cornerRadius = 8
            return cell1
        }
        
        if indexPath.row == 3 {
            
            let point5 = data[indexPath.row] as Data
            cell1.ingCell.image = point5.photo
            cell1.lable1.text = point5.name
            cell1.textOne.text = point5.text
//            cell1.ingCell.layer.cornerRadius = 8
            return cell1
        }
        
        if indexPath.row == 5 {
            let point6 = data[indexPath.row] as Data
            cell3.imgCell2.image = point6.photo
            cell3.labeleCall2.text = point6.name
            cell3.textCell2.text = point6.text
//            cell3.imgCell2.layer.cornerRadius = 8
            return cell3
        }
        
//
        return cell1
    
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 4 {
            return CGSize(width: 500, height: 100)
        }
        return CGSize(width: 500, height: 320)
        
//        indexPath.item == 0 ? CGSize(width: 335, height: 384) :  CGSize(width: 385, height: 364)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colView.delegate = self
        colView.dataSource = self
        let image1 = UIImage(named: "1.jpg")
        let image2 = UIImage(named: "2.jpg")
        let image3 = UIImage(named: "3.jpg")
        let image4 = UIImage(named: "2.jpg")
//        let image5 = UIImage(named: "2.jpg")
        
        let data1 = Data(name: "«УТОП—ТОП—ТОПИЯ»", photo: image1, text: "11 апряля — 5 мая")
        
        let data2 = Data(name: "«Настоящее прошлое»", photo: image2, text: "11 апряля — 5 мая")
        
        let data3 = Data(name: "«Товарищи света»", photo: image3, text: "11 апряля — 5 мая")
        
        let data4 = Data(name: "«Товарищи света»", photo: image4, text: "11 апряля — 5 мая")
        
        
    
        
//        cell1.ingCell.layer.cornerRadius = 8
//                cell1.contentView.layer.cornerRadius = 4.0
//                     cell1.layer.borderWidth = 1.0
//                     cell1.layer.borderColor = UIColor.clear.cgColor
//                     cell1.layer.shadowColor = UIColor.gray.cgColor
//                     cell1.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//                     cell1.layer.shadowRadius = 4.0
//                     cell1.layer.shadowOpacity = 1.0
//                     cell1.layer.masksToBounds = false
//                     cell1.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
//        let data5 = Data(name: "«Товарищи света»", photo: image5, text: "11 СЕНТЯБРЯ — 6 ОКТЯБРЯ 2019")
        
//        let data6 = Data(name: "Рязань", photo: image5, text: "8 МАРШРУТОВ")
        
        data.append(data1)
        data.append(data3)
        data.append(data4)
//        data.append(data5)
        data.append(data2)
//        data.append(data6)
        
    }
    
}

