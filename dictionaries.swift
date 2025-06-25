// 1 - Basic Dictionary Syntax
var emptyLiteral: [String: Int] = [:]
var emptyInitializer = [String: Bool]()

var roleModels: [String: String] = [
  "Mr. Rogers": "Fred McFeely Rogers",
  "The Crocodile Hunter": "Stephen Robert Irwin",
  "Bill Nye the Science Guy": "William Sanford Nye"
]
print(roleModels)


// 2 - Type Inference
var favoriteMovies = [ //no need to specify type.
  "Inception": 2010,
  "The Dark Knight": 2008,
  "Interstellar": 2014
]
print(favoriteMovies)


// 3 - Adding Key-Value Pairs
var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185
]

teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212
print(teaSteepingTemperature)


// 4 - Updating Values
var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]

abbreviations["LOL"] = "Laugh Out Loud" //subscript syntax.
abbreviations.updateValue("Be Right Back", forKey: "BRB") //method syntax.

print(abbreviations)


// 5 - Removing Key-Value Pairs
var rainbowHex = [
  "pink": "#ffc0cb",
  "maroon": "#800000",
  "violet": "#ee82ee"
]

// Write your code below 🌈
rainbowHex["maroon"] = nil
rainbowHex.removeValue(forKey: "pink")
rainbowHex.removeAll()
print(rainbowHex)


// 6 - Inspecting a Dictionary
var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}


// 7 - Accessing Values
var flowerNames = [
  "Lily": "Lilium",                
  "Sunflower": "Helianthus", 
  "Orchid": "Orchidaceae", 
  "Daffodil": "Narcissus"
]

var sunflowerScientific = flowerNames["Sunflower"] //result in an optional type (precaution of a value not exist).
var sunflowerScientific = flowerNames["Sunflower"]! //force unwrap, if the value doesn't exist, it will crash.
if let sunflowerScientific = flowerNames["Sunflower"] { //optional binding, safer way to prevent crash.
  print(sunflowerScientific)
} else {
  print("No value found for that key.")
}

print(sunflowerScientific) 


// 8 - Iterating Over a Dictionary
var airports = [
    "YYZ": "Toronto Pearson",   
    "DUB": "Dublin",
    "LAX": "Los Angeles"
]

for (airportCode, airportName) in airports {
  print("The airport code for \(airportName) is \(airportCode).")
}


// 9 - Iterating Over Keys & Values
var countryCodes = [
  "US": "United States",
  "FR": "France",
  "DE": "Germany",
  "IT": "Italy"
]
for countryCode in countryCodes.keys {
  print("Country code: \(countryCode)")
}
for countryName in countryCodes.values {
  print("Country name: \(countryName)")
}


// 10 - Tuples: Group different types together
var easyAsPie = ("easy as", 3.14)
var firstValue = easyAsPie.0   // "easy as"
var secondValue = easyAsPie.1  // 3.14

var easyAsPie2 = (saying: "easy as", amount: 3.14)
var firstElementValue = easyAsPie2.saying  // "easy as"
var secondElementValue = easyAsPie2.amount // 3.14

