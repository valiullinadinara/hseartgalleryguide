//
//  ViewControllerExp.swift
//  Galley
//
//  Created by Динара Валиуллина on 17/05/2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

class ViewControllerExp: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var ExImg: UIImageView!
    @IBOutlet weak var ExName: UILabel!
    @IBOutlet weak var ExHeader: UILabel!
    @IBOutlet weak var exAuthor: UILabel!
    @IBOutlet weak var exGuide: UILabel!
    @IBOutlet weak var guideName: UILabel!
    @IBOutlet weak var guideAuthor: UILabel!
    @IBOutlet weak var guideImg: UIImageView!
    
    @IBOutlet weak var exAnother: UILabel!
    @IBOutlet weak var exDescription: UILabel!
    
      var imageArroy = [UIImage(named: "9"), UIImage(named: "8"), UIImage(named: "7"), UIImage(named: "9"), UIImage(named: "8"), UIImage(named: "7")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ExImg.image =  UIImage(named:"7")
        ExName.text = "2019, инсталляция, 200х200х170 см"
        ExHeader.text = "Солнце и Луна"
        exAuthor.text = "Автор: Иванов Иван"
        exGuide.text = "Аудиогид"
        guideName.text = "Солнце и луна"
        guideAuthor.text = "Читает Юлия Вымятнина"
        exDescription.text = "Тема «утопия», выбранная художником для занятий и выставки, — сквозная для творчества Пепперштейна. Павел подробно рассказывал студентам о типах утопических конструкций, собственных художественных практиках, провел полушутливый сеанс коллективной медитации для поиска идей проектов. Художник ничем не ограничивал участников выставки — каждый из них самостоятельно выбирал технику, материалы и способ интерпретации заданного направления."
        exAnother.text = "Другие экспонаты"

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArroy.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.imgScroll.image = imageArroy[indexPath.row]
        
        return cell
    }

   

}
