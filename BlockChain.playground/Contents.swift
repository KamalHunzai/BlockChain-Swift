//: www.github.com/kamalhunzai
import Cocoa


class Transaction{
    
    var from:String
    var to:String
    var ammount:Double
    
    init(from:String,to:String,ammount:Double){
        self.from = from
        self.to = to
        self.ammount = ammount
    }
}

class Block{
    
    var index:Int = 0
    var previousHash:String = ""
    var hash:String!
    var nonce:Int
    
    private (set) var transactions:[Transaction]=[Transaction]()
    init(){
        self.nonce = 0
    }
}

class Blockchain {
    
    private (set) var blocks:[Block] = [Block]()
}
