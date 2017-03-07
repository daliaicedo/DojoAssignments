//: Playground - noun: a place where people can play

import UIKit


struct Card {
    var value: String
    var suit:  String
    var numerical_value: Int
    
    func show(){
        print(value,suit,numerical_value)
    }
}

class Deck {
    var cards = [Card]()
    
    init(){
        self.reset(){
            
        }
    func deal() -> Card?{
        if self.cards.count > 0 {
            return self.cards.remove(at: 0)
        }
        else {
            return nil
        }
    }
    
    func reset(){
        let values  = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
        
        let suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
        
        for suit in suits {
        self.cards = [Card]()
                for i in 0...12 {
                    let newCard = Card(value: values[i], suit: suit,  numerical_value: i+1)
                    self.cards.append(newCard)
                }
            }
        }
        
        func shuffle(){
            for i in stride(from: self.cards.count-1, to: 0, by: -1) {
               
                let swapCardIndex = Int(arc4random_uniform(UInt32(i)))
                let temp = self.cards[i]
                self.cards[i] = self.cards[swapCardIndex]
                self.cards[swapCardIndex] = temp
            }
        }
        
        func show(){
            for card in self.cards {
                card.show()
            }
        }
    }



class Player {
    var name: String
    var hand: [Card]
    
    init(name: String){
        self.name = name
        self.hand = [Card]()
    }
    
    func draw(deck:Deck) -> Card? {
        
        if let drawnCard = deck.deal() {

            self.hand.append(drawnCard)
            return drawnCard
        }
        else {
            return nil
        }
    }
    
    func discard(suit: String, value: String) -> Bool {
        for i in 0...self.hand.count-1 {
            if (self.hand[i].suit == suit && self.hand[i].value == value) {
                self.hand.remove(at: i)
                return true
            }
        }
        return false
    }
    
    func show(){
        for card in self.hand {
            card.show()
        }
    }
}

let newDeck = Deck()
print("new deck created")
newDeck.show()

newDeck.shuffle()

print("shuffled deck")
newDeck.show()

let k = Player(name: "k")

k.draw(deck: newDeck)
k.draw(deck: newDeck)
k.draw(deck: newDeck)
k.draw(deck: newDeck)
k.draw(deck: newDeck)

print("<<<<<<<<<<<<<<< Joe's hand >>>>>>>>>>>>>>>>>")
k.show()

print("<<<<<<<<<<<<<<< Joe's discard >>>>>>>>>>>>>>")
print(k.discard(suit: "Clubs", value: "Ace"))