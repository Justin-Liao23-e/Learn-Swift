// 1 - Basic Class
class Restaurant {
    var name = ""
    var type = [""]
    var rating = 0.0
    var delivery = false

    // The init() goes here 🍝
    init(name: String, type: [String], rating: Double, delivery: Bool) {
        self.name = name
        self.type = type
        self.rating = rating
        self.delivery = delivery
    }
}

var laRatatouille = Restaurant(name: "La Ratatouille", type: ["French"], rating: 4.7, delivery: false)

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)


// 2 - Inheritance
class Order {
    var items = [""]
    var subtotal = 0.0
    var tip = 0.0
    var total = 0.0

    func printReceipt() {
        print("Items:     \(items)")
        print("Subtotal:  $\(subtotal)")
        print("Tip:       $\(tip)")
        print("Total:     $\(total)")
    }
}

class DeliveryOrder: Order {
    var deliveryFee = 2.0

    // Override the printReceipt method
    override func printReceipt() {
        super.printReceipt()
        print("Delivery Fee: $\(deliveryFee)")
    }
}

var order1 = Order(items: ["Chili Fries", "Lemonade"], subtotal: 8.75, tip: 2.0, total: 12.75)

// Reference of order1
var order8 = order1
order8.total = 0.0

print(order1.total)
print(order8.total)

