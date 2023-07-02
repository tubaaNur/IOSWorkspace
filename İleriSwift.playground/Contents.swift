import UIKit

//GUARD
func tanıma(ad:String){
    guard ad == "Tuba" else{
        print("Bu kişi yok ")
        return
    }
    print("Merhaba")
}

tanıma(ad: "Mehmet")

//Thread

var threads = """
--> İş parçacıkları(Birden fazla işi aynı anda yaparlar)
--> Kod yazarken ana thread her zaman çalışır. İstersek başka therad oluşturulur
"""
//Therad Oluşumu
let queue = DispatchQueue(label: "etiket")
// Sync olduğu için sıralı çalışır
queue.sync {
    for i in 1...10{
        print("Thread \(i)")
    }
}

for i in 10...20{
    print("Main Thread : \(i)")
}
//Async olduğu için sıralı çalışmaz
queue.async {
    for i in 1...10{
        print("Thread \(i)")
    }
}

for i in 10...20{
    print("Main Thread : \(i)")
}

var threadss = """
--> Öncelik seviyeleri(Yüksek-Düşük)
    *UserInteractive
    *UserInitiated
    *default
    *Utility
    *background
    *Unspecified
"""

//Therad Öncelik Sırası Örnek

let queue1 = DispatchQueue(label: "etiket1", qos: DispatchQoS.userInitiated)
let queue2 = DispatchQueue(label: "etiket2", qos: DispatchQoS.background)

queue1.async {
    for i in 1...10{
        print("T: \(i)")
    }
}
queue2.async {
    for i in 10...20{
        print("B : \(i)")
    }
}


    
