

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var imgMain: UIImageView!
    
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var dateText: UILabel!
    @IBOutlet weak var shortDesc: UILabel!
    @IBOutlet weak var guideHeader: UILabel!
    @IBOutlet weak var reader: UILabel!
    
    @IBOutlet weak var guideName: UILabel!
    @IBOutlet weak var ecsponats: UILabel!
    
    @IBOutlet weak var themeDesc: UILabel!
    @IBOutlet weak var theme: UILabel!
    @IBOutlet weak var allExButton: UIButton!
    
    @IBOutlet weak var allExButton2: UIButton!
    
    
    var imageArroy = [UIImage(named: "9"), UIImage(named: "8"), UIImage(named: "7"), UIImage(named: "9"), UIImage(named: "8"), UIImage(named: "7")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgMain.image =  UIImage(named:"1.jpg")
        header.text = "УТОП-ТОП-ТОПИЯ"
        dateText.text = "11 апреля - 5 мая"
        shortDesc.text = "Второй сезон HSE ART GALLERY открылся групповой выставкой «УТОП-ТОП-ТОПИЯ» студентов первого курса профиля «Анимация и иллюстрация». Куратор — Павел Пепперштейн"
        guideHeader.text = "Аудиогид"
        reader.text = "Читает Юлия Вымятнина"
        guideName.text = "Утоп-топ-топия"
        ecsponats.text = "Экспонаты"
        theme.text = "Тема выставки"
        themeDesc.text = "Тема «утопия», выбранная художником для занятий и выставки, — сквозная для творчества Пепперштейна. Павел подробно рассказывал студентам о типах утопических конструкций, собственных художественных практиках, провел полушутливый сеанс коллективной медитации для поиска идей проектов. Художник ничем не ограничивал участников выставки — каждый из них самостоятельно выбирал технику, материалы и способ интерпретации заданного направления.Выставка представляет собой результат такого образовательного эксперимента. Для студентов это первый опыт работы в поле современного искусства, многие из них впервые пробуют себя в новых для себя жанрах, самостоятельно пишут тексты к своим работам. Живопись, графика, видео, инсталляции и концептуальные высказывания — участники выставки создавали то, что им ближе всего. У каждого из них получилась собственная утопия. На выставке можно рассмотреть цивилизацию, образовавшуюся на кончике кошачьего носа, спрятаться в детском шалаше из простыней и подушек, узнать много нового про чайную ложку."
        
       allExButton2.layer.borderWidth = 2.0
                       allExButton2.layer.borderColor = UIColor.black.cgColor
                       allExButton2.titleLabel?.textColor = UIColor.black
                      allExButton2.tintColor = UIColor.black
                allExButton2.setTitle("Все экспонаты", for: .normal)
    

        
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
