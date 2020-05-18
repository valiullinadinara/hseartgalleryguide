

import UIKit

class ViewControllerEnter: UIViewController {

    @IBOutlet weak var imgHse: UIImageView!
    @IBOutlet weak var enterHeader: UILabel!
    @IBOutlet weak var enterText: UILabel!
    
    
    @IBOutlet weak var close: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        imgHse.image =  UIImage(named:"hse.png")
        
        enterHeader.text = "Как пользоваться приложением?"
        enterText.text = "Чтобы начать пользоваться приложением-гидом по выставкам галереии Школы Дизайна, просто нажмите на кнопку сверху экрана, наведите на QR-код рядом с экспонатом и читайте!"
        
        
        
        close.layer.borderWidth = 2.0
                close.layer.borderColor = UIColor.black.cgColor
                close.titleLabel?.textColor = UIColor.black
               close.tintColor = UIColor.black
         close.setTitle("Скрыть", for: .normal)
        
        
        
//        let button = UIButton.init(type: .system)
//        button.frame = CGRect(x: 50.0, y: 630.0, width: 300, height: 54)
//        button.setTitle("Скрыть", for: .normal)
//        button.layer.borderWidth = 2.0
//        button.layer.borderColor = UIColor.black.cgColor
//        button.titleLabel?.textColor = UIColor.black
//        button.tintColor = UIColor.black
//
//        button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
//        self.view.addSubview(button)
        
        
    }
    
//    @objc func buttonClicked(_ : UIButton){
//        print("Скрыть")
//    }
   

}
