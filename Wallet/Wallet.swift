import Foundation

class Wallet {
    
    static func debit(money: Int) {
        let store = UserDefaults.standard
        var amount:Int = store.integer(forKey: "amount")
        amount = amount - money
    }
    
    static func credit(money: Int) {
        let store = UserDefaults.standard
        var amount:Int = store.integer(forKey: "amount")
        amount = amount - money
    }
    
    static func getAmount() -> Int {
        let store = UserDefaults.standard
        return store.integer(forKey: "amount")
    }
}

