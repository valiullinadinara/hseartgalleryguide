

import UIKit

class ViewController2: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var exName: UILabel!
    @IBOutlet weak var exDate: UILabel!
    @IBOutlet weak var exText: UILabel!
    @IBOutlet weak var exImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exImg.image =  UIImage(named:"1.jpg")
        exName.text = "Утоп-топ-топия"
        exDate.text = "11 апреля - 10 мая"
        exText.text = "Второй сезон HSE ART GALLERY открылся групповой выставкой «УТОП-ТОП-ТОПИЯ» студентов первого курса профиля «Анимация и иллюстрация». Куратор — Павел Пепперштейн"

        
        
        
        
                   }
               

       
    }
    



