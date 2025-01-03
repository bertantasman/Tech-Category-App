//
//  ViewController.swift
//  kategoriApp
//
//  Created by Bertan Taşman on 6.12.2024.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var kategoriTable: UITableView!
    
    
    var kategoriler: [kategoriListe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kategoriTable.dataSource = self
        kategoriTable.delegate = self
        kategoriTable.rowHeight = UITableView.automaticDimension
        kategoriTable.estimatedRowHeight = 150
        
        
        let bilgisayarlar = [
            urunListe(id: 1, name: "MacBook M1", image: "macbookm1", price: 19.999, oldprice: nil, detay: "M1 çipi, 2020 yılında tanıtılmış ve sektördeki ilk 5nm mimarisine sahip işlemci olarak yeni bir çağ başlatmıştır. 8 çekirdekli CPU (4 performans, 4 verimlilik çekirdeği) ve 8 çekirdekli GPU ile günlük işlerden yaratıcı projelere kadar kusursuz bir deneyim sunar. Unified Memory Architecture (UMA) sayesinde tüm bileşenlerin aynı bellek havuzunu paylaşmasını sağlayarak verimliliği artırır. Yüksek enerji verimliliği ile uzun pil ömrü sunarken, 16GB birleşik bellek ve 2TB’a kadar SSD depolama desteği ile profesyonel kullanıcıların ihtiyaçlarını karşılar.M1 çipi, 2020 yılında tanıtılmış ve sektördeki ilk 5nm mimarisine sahip işlemci olarak yeni bir çağ başlatmıştır. 8 çekirdekli CPU (4 performans, 4 verimlilik çekirdeği) ve 8 çekirdekli GPU ile günlük işlerden yaratıcı projelere kadar kusursuz bir deneyim sunar. Unified Memory Architecture (UMA) sayesinde tüm bileşenlerin aynı bellek havuzunu paylaşmasını sağlayarak verimliliği artırır. Yüksek enerji verimliliği ile uzun pil ömrü sunarken, 16GB birleşik bellek ve 2TB’a kadar SSD depolama desteği ile profesyonel kullanıcıların ihtiyaçlarını karşılar."),
            urunListe(id: 2, name: "MacBook M2", image: "macbookm2", price: 22.999, oldprice: 24.999, detay: "M2 çipi, M1’e kıyasla %18 daha hızlı CPU ve %35 daha güçlü GPU performansı ile bir üst seviyeye taşınmıştır. 24GB’a kadar genişletilebilen birleşik bellek, video düzenleme, kodlama ve ağır grafik işlerinde üstün bir deneyim sunar. Yeni medya motorları sayesinde 8K ProRes video işleme desteği sağlar. 2. nesil 5nm teknolojisiyle üretilen M2, daha yüksek performans-per-watt oranı ve geliştirilmiş verimlilik çekirdekleri ile daha akıcı bir kullanıcı deneyimi sunar."),
            urunListe(id: 3, name: "MacBook M3", image: "macbookm3", price: 30.999, oldprice: nil, detay: "M3 çipi, 3nm teknolojisiyle üretilmiş ilk Mac işlemcisi olarak dikkat çeker ve performans-per-watt açısından rakipsizdir. 12 çekirdekli CPU, 18 çekirdekli GPU ve 36GB birleşik bellek kapasitesi ile yoğun profesyonel iş akışlarını kolaylıkla yönetir. Ray tracing ve mesh shading gibi grafik teknolojileri ile oyun ve yaratıcı işler için yeni bir standart belirler. Gelişmiş Neural Engine ile yapay zeka işlemlerinde büyük bir sıçrama gerçekleştiren M3, enerji verimliliği ve soğutma teknolojileriyle daha sessiz ve güçlü bir performans sunar.")
        ]
        
        let telefonlar = [
            urunListe(id: 4, name: "iPhone 14", image: "iphone14", price: 29.999, oldprice: 32.999, detay: "iPhone 14, 2022 yılında tanıtılmıştır. 6.1 inç Super Retina XDR OLED ekranı, 2532 x 1170 piksel çözünürlüğe ve 460 ppi piksel yoğunluğuna sahiptir. A15 Bionic çip ile güçlendirilmiş olup, 128 GB, 256 GB ve 512 GB depolama seçenekleri sunar. Arka tarafta 12 MP geniş ve 12 MP ultra geniş lenslerden oluşan çift kamera sistemi bulunur. Ön kamera ise 12 MP çözünürlüğündedir. Cihaz, 20 saate kadar video oynatma süresiyle uzun pil ömrü sağlar."),
            urunListe(id: 5, name: "iPhone 15", image: "iphone15", price: 34.999, oldprice: 37.999, detay: "iPhone 15, 2023 yılında piyasaya sürülmüştür. 6.1 inç Super Retina XDR OLED ekranı, 2556 x 1179 piksel çözünürlüğe ve 460 ppi piksel yoğunluğuna sahiptir. A16 Bionic çip ile donatılmış olan cihaz, 128 GB, 256 GB ve 512 GB depolama seçenekleri sunar. Arka kamerada 48 MP ana kamera ve 12 MP ultra geniş lens bulunurken, ön kamera 12 MP çözünürlüğündedir. USB-C bağlantı noktasıyla gelen iPhone 15, 26 saate kadar video oynatma süresi sunar."),
            urunListe(id: 6, name: "iPhone 16", image: "iphone16", price: 39.999, oldprice: nil, detay: "iPhone 16, 2024 yılında tanıtılmıştır. 6.1 inç Super Retina XDR OLED ekranı, 2556 x 1179 piksel çözünürlüğe ve 460 ppi piksel yoğunluğuna sahiptir. A18 çip ile güçlendirilmiş olan cihaz, 128 GB, 256 GB ve 512 GB depolama seçenekleri sunar. Arka kamerada 48 MP ana kamera ve 12 MP ultra geniş lens bulunurken, ön kamera 12 MP çözünürlüğündedir. Yeni 'Kamera Kontrol' düğmesi ve gelişmiş yapay zeka özellikleriyle kullanıcı deneyimini iyileştirir. Ayrıca, 30 saate kadar video oynatma süresiyle daha uzun pil ömrü sağlar.")
        ]
        
        let saatler = [
            urunListe(id: 7, name: "Apple Watch Series 8", image: "watch8", price: 9.999, oldprice: 11.999, detay: "Apple Watch Series 7, 2021 yılında tanıtılmıştır. 1,9 inç Retina LTPO OLED ekranı, 484 x 396 piksel çözünürlüğe ve 326 ppi piksel yoğunluğuna sahiptir. S7 çip ile güçlendirilmiş olup, 32 GB depolama kapasitesi sunar. EKG uygulaması, kandaki oksijen ölçümü ve düşme algılama gibi sağlık özellikleri bulunmaktadır. 18 saate kadar pil ömrü sağlar ve hızlı şarj desteği mevcuttur. "),
            urunListe(id: 8, name: "Apple Watch Series 9", image: "watch9", price: 11.999, oldprice: 14.999, detay: "Apple Watch Series 8, 2022 yılında piyasaya sürülmüştür. 1,9 inç Retina LTPO OLED ekranı, 484 x 396 piksel çözünürlüğe ve 326 ppi piksel yoğunluğuna sahiptir. S8 çip ile donatılmış olan cihaz, 32 GB depolama kapasitesi sunar. EKG uygulaması, kandaki oksijen ölçümü, düşme algılama ve trafik kazası algılama gibi gelişmiş sağlık özelliklerine sahiptir. 18 saate kadar pil ömrü sunar ve hızlı şarj desteği bulunmaktadır."),
            urunListe(id: 9, name: "Apple Watch Series 10", image: "watch10", price: 13.999, oldprice: nil,detay: "Apple Watch Series 9, 2023 yılında tanıtılmıştır. 1,9 inç Retina LTPO OLED ekranı, 484 x 396 piksel çözünürlüğe ve 326 ppi piksel yoğunluğuna sahiptir. S9 çip ile güçlendirilmiş olan cihaz, 32 GB depolama kapasitesi sunar. EKG uygulaması, kandaki oksijen ölçümü, düşme ve trafik kazası algılama gibi sağlık özelliklerinin yanı sıra, yeni çift dokunuş hareketi ve geliştirilmiş Siri entegrasyonu gibi yenilikçi özellikler sunar. 18 saate kadar pil ömrü sağlar ve hızlı şarj desteği mevcuttur.")
        ]
        
        let kulakliklar = [
            urunListe(id: 10, name: "JBL T460BT", image: "t460bt", price: 9.999, oldprice: nil,detay: "JBL T460BT, kablosuz özgürlüğü kompakt bir tasarımla birleştirerek kullanıcılarına üstün bir ses deneyimi sunar. 32 mm dinamik sürücüleri ve JBL Pure Bass teknolojisi sayesinde derin ve güçlü baslar elde edilir. Bluetooth 4.0 bağlantısı ile kablo karmaşasına son verirken, 11 saate kadar pil ömrüyle kesintisiz müzik keyfi sağlar. Katlanabilir ve hafif tasarımı, taşınabilirliği artırır. Kulaklık üzerindeki kontrol düğmeleri ve entegre mikrofon sayesinde müzik ve çağrılar kolayca yönetilebilir."),
            urunListe(id: 11, name: "JBL T520BT", image: "t520bt", price: 14.999, oldprice: 17.999,detay: "JBL T520BT, gelişmiş ses kalitesi ve konforu bir araya getirerek kullanıcı deneyimini üst seviyeye taşır. Bluetooth 5.0 teknolojisi ile daha hızlı ve kararlı bağlantı sunar. JBL Pure Bass teknolojisi ile zengin ve etkileyici ses performansı sağlar. Katlanabilir ve hafif tasarımı sayesinde kolayca taşınabilir. Uzun pil ömrü ile gün boyu müzik keyfi sunar. Kulaklık üzerindeki kontrol düğmeleri ve entegre mikrofon ile müzik ve çağrılar rahatça yönetilebilir."),
            urunListe(id: 12, name: "JBL T560BT", image: "t560bt", price: 1.999, oldprice: nil,detay: "JBL T560BT, kablosuz kullanımda yüksek performans arayanlar için ideal bir seçenektir. 32 mm dinamik sürücüleri ve JBL Pure Bass teknolojisi ile güçlü ve net ses sunar. Bluetooth 4.1 bağlantısı sayesinde kablosuz özgürlük sağlar. 16 saate kadar pil ömrü ile uzun süreli kullanım imkanı tanır. Hızlı şarj özelliği sayesinde 5 dakikalık şarj ile 1 saatlik kullanım sağlar. Katlanabilir ve hafif tasarımı, taşınabilirliği artırır. Kulaklık üzerindeki kontrol düğmeleri ve entegre mikrofon ile müzik ve çağrılar kolayca yönetilebilir.")
        ]
        
        let k1 = kategoriListe(id: 1, kategoriName: "Bilgisayarlar", resim: "bilgisayar", urunler: bilgisayarlar)
        let k2 = kategoriListe(id: 2, kategoriName: "Telefonlar", resim: "telefon", urunler: telefonlar)
        let k3 = kategoriListe(id: 3, kategoriName: "Saatler", resim: "saat", urunler: saatler)
        let k4 = kategoriListe(id: 4, kategoriName: "Kulaklıklar", resim: "headphones", urunler: kulakliklar)
        
        kategoriler.append(contentsOf: [k1, k2, k3, k4])
    }
}

extension Anasayfa: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategoriler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategoriler[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre") as! kategoriTable
        hucre.labelUrunKategori.text = kategori.kategoriName
        hucre.imageViewKategori.image = UIImage(named: kategori.resim ?? "")
        
        return hucre
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedKategori = kategoriler[indexPath.row]
        performSegue(withIdentifier: "toUrunler", sender: selectedKategori)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUrunler" {
            let destinationVC = segue.destination as! UrunListesiViewController
            if let selectedKategori = sender as? kategoriListe {
                destinationVC.urunler = selectedKategori.urunler
                destinationVC.kategoriAdi = selectedKategori.kategoriName
            }
        }
    }

}
