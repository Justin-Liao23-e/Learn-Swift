// 1 - Private Property
struct Office {
    let paperclipCost = 10

    static var paperclipSalesRecord : Int = 0 //type property.

    // Private variable with observers
    private(set) var paperclipSales: Int { //private setter.
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
            if newValue > Office.paperclipSalesRecord {
                Office.paperclipSalesRecord = newValue
            }
        }
        didSet {
          print("Originally, we sold \(oldValue) paperclips.")
        }
    }

    // 2: Add an initializer, needed for the private variable
    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }

    // Read-write computed property
    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
        set(newTotalRevenue) {
          paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    // Private method
    private func getSecretRevenue() -> Int {
        return 100
    }

    func printTotalRevenue() {
        // 3: Modify the totalRevenue
        //let totalRevenue = paperclipSales * paperclipCost + getSecretRevenue() //called inside struct.
        print("Our total revenue this month is \(totalRevenue).")
    }
}

// Extension
extension Office {
    static func printCurrentRecord() {
      print("The current record for paperclip sales is \(paperclipSalesRecord)")
    }
    var paperclipColor: String {
      return "gray"
    }
}

// Create an Office
var alphaOffice = Office(paperclipSales: 18)

// Print the total revenue
alphaOffice.printTotalRevenue()

// Attempt to access a private property
//let invalidAccess = alphaOffice.paperclipSales

print(alphaOffice.totalRevenue) //getter.
alphaOffice.totalRevenue = 400 //setter.

// Use extension method
Office.printCurrentRecord() //use Office because it's a type method.
print(alphaOffice.paperclipColor) //use instance because it's an instance property.

