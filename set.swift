// 1 - Basic Set Syntax: Unique unordered collection of values. 
var consonants = Set<Character>()
var vowels: Set = ["A", "E", "I", "O", "U"]
print(vowels) //notice the order is not guaranteed.


// 2 - .count and .isEmpty
var sockDrawer: Set = ["Red Polka Dots", "Blue Stripes", "Plain Whites"]

if sockDrawer.isEmpty {
  print("Time to add some more socks!")
} else {
  print("We have \(sockDrawer.count) pairs of socks.")
}


// 3 - .insert() and .remove()
var friends: Set = ["Harry", "Ron"]

friends.insert("Hermione") //insert returns a tuple (inserted: Bool, memberAfterInsert: Set.Element)
friends.insert("Ron") //duplicate, will be ignored.

print("Friends: \(friends)")

friends.remove("Harry")
// friends.removeAll() //removes all elements.

print("Friends: \(friends)")


// 4 - .contains()
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
if favoriteGenres.contains("Jazz") {
  print("I get up on the good foot.")
} else {
  print("No jazz for me.")
}


// 5 - intersection, union, symmetricDifference, subtracting
// Intersection: elements common to both sets.
var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]
var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]

var swimAndFly = swim.intersection(fly)
print(swimAndFly)

// Union: all elements in either set.
var book1: Set = ["Pig 1", "Pig 2", "Pig 3", "Wolf"]
var book2: Set = ["Little Red Riding Hood", "Grandma", "Wolf"]
var book3: Set = ["Jack", "Blunderbore", "Beanstock"]
var allCharacters = book1.union(book2).union(book3)
print(allCharacters)

// Symmetric Difference: elements in either set but not both.
var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

var difference = oscarWinners.symmetricDifference(emmyWinners)
print(difference)

// Subtracting: elements in one set but not the other.
var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]

var veggieEmojis = foodEmojis.subtracting(fruitEmojis)
print(veggieEmojis)


