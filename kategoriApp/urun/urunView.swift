import UIKit

class urunView: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var urunOldPrice: UILabel!
    @IBOutlet weak var urunFiyat: UILabel!
    @IBOutlet weak var urunName: UINavigationItem!
    @IBOutlet weak var urunImage: UIImageView!
    @IBOutlet weak var urunAcıklama: UILabel!
    
    var urunTitle: String?
    var urunImageName: String?
    var urunPrice: Float?
    var urunOldPriceValue: Float?
    var urunDetay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunName.title = urunTitle
        
        if let imageName = urunImageName {
            urunImage.image = UIImage(named: imageName)
        }
        
        if let price = urunPrice {
            urunFiyat.text = "\(price)₺"
        }
        
        if let oldPrice = urunOldPriceValue {
            let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "\(oldPrice)₺")
            attributeString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
            urunOldPrice.attributedText = attributeString
            urunOldPrice.isHidden = false
        } else {
            urunOldPrice.text = nil
            urunOldPrice.isHidden = true
        }
        
        
        urunAcıklama.text = urunDetay
        
        
        
    }
    
}
