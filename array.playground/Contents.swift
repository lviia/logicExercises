import UIKit
"""
 Gerar 2 arrays, contendo 10 números aleatórios cada
 Junte esses dois arrays em um outro
 De forma ordenada, crescente e sem elementos repetidos
"""

func arrayMerge() {
    var a = [Int]()
    var b = [Int]()
    var c = [Int]()
    
    while a.count != 10 {
        let randomNumber = Int.random(in: 1...50)
        if !a.contains(randomNumber) {
            a.append(randomNumber)
        }
    }
    
    while b.count != 10 {
        let randomNumber = Int.random(in: 1...50)
        if !b.contains(randomNumber) {
            b.append(randomNumber)
        }
    }

    print("Array A: \(a)")
    print(" ")
    print("Array B: \(b)")
    
    c.append(contentsOf: a)
    
    for i in b {
        if !c.contains(i) {
            c.append(i)
        }
    }
    
    print(" ")
    print("Array C: \(c.sorted())")
}





