// 1 - Basic Structure
struct Name {
  var first: String
  var last: String
}


// 2 - Default Values
struct Name {
  var name: String
  var age: Int = 0
}

var firstPerson = Name() //basic instance.
var secondPerson = Name(name: "John", age: 30) //custom instance.

// Update properties
firstPerson.name = "Steve Jobs"
secondPerson.age = 31


// 3 - Init Method
struct Book {
  var title: String
  var pages: Int

  // Add your code below 📚
  init (title: String, pages: Int) {
    self.title = title
    self.pages = pages
  }

}

var theHobbit = Book(title: "The Hobbit", pages: 300) 

// Memberwise initialization
var anotherBook = Book(title: "1984", pages: 328) //you don't need Init for this, but bad for others to interpret code.


// 4 - Instance Methods
struct City {
  var name: String
  var population: Int

  func collectTaxes() -> Int {
    return population * 1000
  }
  
  // Mutable
  mutating func changePopulation(to newPopulation: Int) {
    population = newPopulation
  }
}

var metropol = City(name: "Metropol", population: 1_000_000)
print(metropol.collectTaxes())

metropol.changePopulation(to: 1_200_000)
print(metropol.collectTaxes())


// 5 - New Type
struct Pets {
    //var petDog: Dog
    //var petCat: Cat
}