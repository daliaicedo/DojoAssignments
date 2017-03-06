
import UIKit

func tossCoin() -> String {
    let coin = Int(arc4random_uniform(UInt32(3)))
    
    if coin >= 2 {
        return "Heads"
    }else {
        return "Tails"
    }
}

tossCoin()


func tossMultipleCoins(tosses: Int) -> Double {
    
    var countHeads = 0
    var countTails = 0
    
    for i in 0...tosses {
        if tossCoin() == "Heads" {
            countHeads += 1
        }else {
            countTails += 1
        }
    }
    
    return Double(tosses) / Double(countHeads)
}


tossMultipleCoins(tosses: 100)