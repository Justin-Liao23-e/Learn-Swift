// Project: Swift Bank

struct SwiftBank {
    static let depositBonusRate = 0.01 
    private let password: String
    private var hasReceivedBonus: Bool = false //first-time only.

    private var balance: Double = 0 {
        didSet {
        if balance < 100 { //observer to notify low balalnce.
            displayLowBalanceMessage() 
        }
        }
    }

    // Initiation.
    init(password: String, initialDeposit: Double){
        self.password = password
        makeDeposit(depositAmount: initialDeposit)
    }

    // Check if the password is valid.
    private func isValid(enteredPassword: String) -> Bool {
        return enteredPassword == password
    }

    // Helper to compute deposit + bonus.
    private func finalDepositWithBonus(deposit: Double) -> Double {
        return deposit + (deposit * SwiftBank.depositBonusRate)
    }

    // Make deposit.
    mutating func makeDeposit(depositAmount: Double) {
        let total = depositAmount

        if depositAmount >= 1000 && !hasReceivedBonus {
            hasReceivedBonus = true
            total = finalDepositWithBonus(deposit: depositAmount)
            print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(total).")
        } else {
            print("Making a deposit of $\(depositAmount). The final amount deposited is $\(total).")
        }

        balance += total
    }

    // Balance check.
    func displayBalance(password: String) {
        if !isValid(enteredPassword: password) {
        print("Error: Invalid password. Cannot retrieve balance.")
        return
        }
        print("Your current balance is $\(balance).")
    }

    // Withdrawal.
    mutating func makeWithdrawal(withdrawalAmount: Double, password: String) {      
        if !isValid(enteredPassword: password) {
        print("Error: Invalid password. Cannot make withdrawal.")
        return
        }
            
        balance -= withdrawalAmount
        print("Making a $\(withdrawalAmount) withdrawal.")
    }

    // Low-balance alert
    private func displayLowBalanceMessage() {
        print("Alert: Your balance is under $100.")
    }
}

// Testing Results
var myAccount = SwiftBank(password: "ABC1", initialDeposit: 500)
myAccount.makeDeposit(depositAmount: 50)
myAccount.makeWithdrawal(withdrawalAmount: 100, password: "ABBB") //wrong password.
myAccount.makeWithdrawal(withdrawalAmount: 100, password: "ABC1")
myAccount.displayBalance(password: "ABC1")