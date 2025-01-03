import UIKit

class UrunListesiViewController: UIViewController {

    @IBOutlet weak var urunListesiTitleLabel: UINavigationItem!
    @IBOutlet weak var urunTableView: UITableView!

    var urunler: [urunListe] = []
    var kategoriAdi: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        urunTableView.dataSource = self
        urunTableView.delegate = self
        
        if let kategoriAdi = kategoriAdi {
            urunListesiTitleLabel.title = kategoriAdi
        }
    }
}



extension UrunListesiViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunler.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedUrun = urunler[indexPath.row]
        performSegue(withIdentifier: "toUrun", sender: selectedUrun)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUrun" {
            let destinationVC = segue.destination as! urunView
            if let selectedUrun = sender as? urunListe {
                destinationVC.urunTitle = selectedUrun.name
                destinationVC.urunImageName = selectedUrun.image
                destinationVC.urunPrice = selectedUrun.price
                destinationVC.urunOldPriceValue = selectedUrun.oldprice
                destinationVC.urunDetay = selectedUrun.detay
            }
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hucre = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! urunTable
        let urun = urunler[indexPath.row]
        
        
        hucre.UrunTableLabel.text = "\(urun.name ?? "")"
        hucre.urunTableImage.image = UIImage(named: urun.image ?? "")
        hucre.urunNewPrice.text = "\(urun.price!) ₺"
        
        
        if let oldPrice = urun.oldprice {
            let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "\(oldPrice) ₺")
            attributeString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
            hucre.urunOldPrice.attributedText = attributeString
            hucre.urunOldPrice.isHidden = false
        } else {
            hucre.urunOldPrice.text = nil
            hucre.urunOldPrice.isHidden = true
        }
        
        return hucre
    }

}
