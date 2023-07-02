import UIKit

//Tanımlama

let str1 = "Tuba"
let str2 = String("Tutu")
let str3 = """
Tuba IOS Developer olacak
"""
print(str1)
print(str2)
print(str3)

//Boş Kontrolü

var str = ""
if str.isEmpty{
    print("Boş değişken")
}
else{
    print("Boş değişken değildir")
}

var str21 = "Tuba"
if str2.isEmpty{
    print("Boş değişken")
}
else{
    print("Boş değişken değildir")
}

//Veri Ekleme

let a = 3
let b = 1

let c = "\(a)+ \(b) = \(a+b)"
print(c)

//String Birleştirme

let a1 = "Tuba"
let b2 = " IOS Developer"

let c2 = a1+b2
print(c2)

//Boyut

var string = "Tuba IOS Developer"
print(str.count)

//Karşılaştırma

let string1 = "Tuba"
let string2 = "Başar"

if string1 == string2{
    print("String değişkenleri birbirine eşittir")
}
else{
    print("Değişkenler birbirine eşit değildir")
}

//Parçalama

let stringg = "Tuba Nur"

for harf in stringg {
    print(harf, terminator: " ")
}

var stringh = "Tubatuban"
if stringh.contains("a"){
    print("İçeriyor")
}
else{
    print("İçermiyor")
}
stringh.insert("x", at: stringh.index(stringh.startIndex, offsetBy: 3))
print(stringh)
stringh.remove(at: stringh.index(stringh.startIndex, offsetBy: 1))
print(stringh)

//Kelimeyi tersten yazdırma

var newstr = "Yeşiltaş"
var dizi = [Character]()
for harf in newstr{
    print(harf)
    dizi.append(harf)
}
print(dizi)

for i in stride(from: (dizi.count-1), through: 0, by: -1){
    print(dizi[i], terminator: " ")
}
