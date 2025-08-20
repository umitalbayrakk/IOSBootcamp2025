import Foundation

// ====================================================
// 📝 Ödev 1.1 – Değişkenler ve Veri Tipleri
// ====================================================

// String – Ad Soyad
var adSoyad: String = "Ümit Albayrak"

// Int – Yaş
var yas: Int = 25

// Double – Boy (metre cinsinden)
var boy: Double = 1.80

// Bool – Yazılımı seviyor muyum?
var yazilimiSeviyorMuyum: Bool = true

// Optional – Takma adım olabilir ya da olmayabilir
var takmaAd: String? = nil // Şimdilik takma adım yok

// Optional güvenli açılım (Optional Binding)
if let mevcutTakmaAd = takmaAd {
    print("Takma adım: \(mevcutTakmaAd)")
} else {
    print("Herhangi bir takma adım yok.")
}

// Bilgi kartını yazdır
print("""
👤 Ad Soyad: \(adSoyad)
🎂 Yaş: \(yas)
📏 Boy: \(boy)
💻 Yazılım sevgisi: \(yazilimiSeviyorMuyum ? "Evet" : "Hayır")
""")


// ====================================================
// 🧮 Ödev 1.2 – Fonksiyonlar ve Closure’lar
// ====================================================

// Basit Hesap Makinesi Fonksiyonu
func hesapMakinesi(_ sayi1: Double, _ sayi2: Double, islem: String) -> Double? {
    switch islem {
    case "topla":
        return sayi1 + sayi2
    case "cikar":
        return sayi1 - sayi2
    case "carp":
        return sayi1 * sayi2
    case "bol":
        return sayi2 != 0 ? sayi1 / sayi2 : nil
    default:
        return nil
    }
}

// Fonksiyon testleri
print("Toplama: \(hesapMakinesi(10, 5, islem: "topla")!)")
print("Çıkarma: \(hesapMakinesi(10, 5, islem: "cikar")!)")
print("Çarpma: \(hesapMakinesi(10, 5, islem: "carp")!)")
if let sonuc = hesapMakinesi(10, 0, islem: "bol") {
    print("Bölme: \(sonuc)")
} else {
    print("Hata: 0’a bölme yapılamaz!")
}

// Closure ile filtreleme ve sıralama
let sayilar = [10, 3, 7, 22, 5, 8, 15]

// Çift sayıları filtrele
let ciftSayilar = sayilar.filter { $0 % 2 == 0 }
print("Çift Sayılar: \(ciftSayilar)")

// Büyükten küçüğe sıralama
let sirali = sayilar.sorted { $0 > $1 }
print("Büyükten küçüğe sıralı: \(sirali)")
