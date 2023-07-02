import UIKit
//CLASS
//class Car{
//    var name:String?
//    var cash: Double?
//}
//var BMW = Car()
//BMW.name="Tutuş"
//BMW.cash=10.20
//print("Ad \(BMW.name!);Fiyat \(BMW.cash!)")

//class Home{
//    var pay:Int?
//    var city:String?
//
//
//    func InformationHome(){
//        print("Fiyat : \(pay!)")
//        print("Şehir : \(city!)")
//    }
//}
//
//var TutuHome = Home()
//TutuHome.pay = 20
//TutuHome.city="İstanbul"
//
//TutuHome.InformationHome()

//LAZY
//class Scholl{
//    lazy var name="Nişantaşı Anadolu"
//}
//var firstscholl = Scholl()
//print(firstscholl.name)

//Hesaplama

//class Math{
//    var a = 10
//    var b = 20
//
//    var plus:Int{
//        return a+b
//    }
//}
//
//var snc=Math()
//print(snc.plus)
 
//Function

//func plus(number1:Int, number2:Int) -> Int{
//    return number1 + number2
//}
//
//var snc = plus(number1: 10, number2: 20)
//print("Sonuç: \(snc)")

//func WriteConsole(){
//    let write = "Tuba Nur"
//    print(write)
//
//}
//
//WriteConsole()

//Overloading
//
//func plus(nmbr1:Int, nmbr2: Int)-> Int{
//    return nmbr1 + nmbr2
//}
//func plus(nmbr1:Float, nmbr2: Int) -> Float{
//    return nmbr1 + Float(nmbr2)
//}
//
//var snc1 = plus(nmbr1:10, nmbr2: 20)
//var snc2 = plus(nmbr1: 30, nmbr2: 40)
//
//print("1. Result: \(snc1)")
//print("2. Result: \(snc2)")

//Vardiac

//func vardiacNumber(numbers:Int...)->Int{
//    var toplam=0
//    for s in numbers{
//        toplam = s+toplam
//    }
//    return toplam
//}
//
//var tplm1 = vardiacNumber(numbers: 1,2,3,4,5,6)
//print(tplm1)

//Global Local Parameter

//func hesapla(number1 n1: Int, number2 n2:Int) ->Int{
//    return n1*n2
//}
//
//var snc = hesapla(number1: 2, number2: 3)
//print(snc)

//Ödev: Dikdörtgen Çevre Hesaplama
//class Odev{
//
//
//    func hesapla(kısakenar: Int, uzunkenar:Int){
//        var islem = 2*kısakenar + 2*uzunkenar
//        print(islem)
//    }
//}
//
//let dktrgn = Odev()
//dktrgn.hesapla(kısakenar: 2, uzunkenar: 3)

//Ödev: İç Açılar Toplamını bulma
//
//class Odev{
//
//    func hesaplaacı(kenarsayısı: Int)-> Int{
//        var toplam = (kenarsayısı-2)*180
//        return toplam
//    }
//}
//
//var snc = Odev()
//let sonuc = snc.hesaplaacı(kenarsayısı: 3)
//print("İç açıları toplamı : \(sonuc)")

//Constructor & Shadowing

//class Kisiler{
//    var ad:String?
//    var yas:Int?
//    init() {
//
//    }
//    init(ad1: String, yas1: Int){
//        ad = ad1
//        yas = yas1
//    }
//}
//var k1 = Kisiler()
//k1.ad = "Tuba"
//k1.yas = 23
//print(k1.ad!)
//print(k1.yas!)
//
//var k2 = Kisiler(ad1: "Başar", yas1: 22)
//print(k2.ad!,k2.yas!)

//Class Structure Fark

//class Kisi{
//    var ad:String?
//}
//
//var ogr1 = Kisi()
//ogr1.ad = "Ahmet"
//var ogr2 = ogr1
//ogr2.ad = "Mehmet"
//
//print(ogr1.ad!)
//
//struct Kisiler{
//    var ad:String?
//}
//
//var kisi1 = Kisiler()
//kisi1.ad = "Tuba"
//
//var kisi2 = kisi1
//kisi2.ad = "Başar"
//
//print(kisi1.ad!)

//Static Değişken ve Methodlar

//class Araba{
//    static var marka = "Mercedes"
//    static func method(){
//        print("Tuba")
//    }
//}
//
//print(Araba.marka)
//Araba.method()

//Enumeration

//enum Renkler{
//    case Beyaz
//    case Siyah
//}
//
//var renk = Renkler.Siyah
//
//switch renk{
//
//case .Beyaz:
//    print("Beyaz renk")
//
//case .Siyah:
//    print("Siyah renk")
//    break
//}
//print("Renk yoktur")

//Composition

//class Kisi{
//    var ad:String?
//    var adres: Adres?
//
//    init(ad:String, adres:Adres){
//        self.ad = ad
//        self.adres = adres
//    }
//}
//
//class Adres{
//    var ilce:String?
//    var sehir:String?
//
//    init(ilce:String, sehir: String){
//        self.ilce = ilce
//        self.sehir = sehir
//    }
//}
//
//var adres = Adres(ilce:"Şişli", sehir: "İstanbul")
//var kisi = Kisi(ad: "Tuba", adres: adres)
//print(kisi.ad!)
//print(kisi.adres!.ilce!)
//print(kisi.adres!.sehir!)

//Inheritance

//class Araba{
//    var tekerlek:Int?
//
//    init(tekerlek:Int) {
//        self.tekerlek = tekerlek
//    }
//}
//
//class Mercedes: Araba{
//    var model:String?
//
//    init(model:String, tekerlek:Int) {
//        self.model = model
//        super.init(tekerlek:tekerlek)
//    }
//}
//
//var araba = Araba(tekerlek: 4)
//var M1 = Mercedes(model: "2023T", tekerlek: 4)
//
//print("Araba tekerlek sayısı : \(araba.tekerlek!)")
//print("Araba Modeli : \(M1.model!)")

//PROTOCOL
//
//protocol Protocol1{
//    var degisken: Int { get set }
//    func metod1()
//    func metod2() -> Int
//}
//
//class Persons:Protocol1 {
//
//    var degisken = 10
//
//    func metod1(){
//        print("tuba")
//    }
//    func metod2()-> Int{
//        return 100
//    }
//
//    init(degisken:Int) {
//        self.degisken = degisken
//    }
//}
//
//var nsn = Persons(degisken:10)
//print(nsn.degisken)
//print(nsn.metod2())
//nsn.metod1()
//var kisi = Persons(degisken: 200)
//print(kisi.degisken)

//CLOSURE

//let ifade = {
//    print("Geri dönüşü olmayan closure")
//}
//ifade()
//
//let toplama = {
//    (sayi1: Int, sayi2:Int) -> Int in
//    return sayi1+sayi2
//}
//var toplam = toplama(2,3)
//print(toplam)
//
//var dizi:[Int]=[2,5,8,1,-3]
//var sıralama = dizi.sorted(by:{sayi1,sayi2 in sayi1>sayi2})
//print(sıralama)







