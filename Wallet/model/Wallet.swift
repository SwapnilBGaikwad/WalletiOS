import Foundation

class Wallet {
    static let store = UserDefaults.standard
    static func credit(money: Int) {
        var amount:Int = store.integer(forKey: "amount")
        amount = amount + money
        store.set(amount, forKey: "amount")
    }
    
    static func debit(money: Int) {
        var amount:Int = store.integer(forKey: "amount")
        amount = amount - money
        store.set(amount, forKey: "amount")
    }
    
    static func getAmount() -> Int {
        return store.integer(forKey: "amount")
    }
}

