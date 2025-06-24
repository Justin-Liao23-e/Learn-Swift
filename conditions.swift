// 1 - Basic If Statement
var learningToCode = false

if learningToCode {
  print("Don't forget to take breaks! You got this")
}


// 2 - If-Else Statement
var wearGlasses = true

if wearGlasses {
  print("I wear glasses") 
} else {
  print("I don’t wear glasses")  
}


// 3 - Comparison Operators
4 < 5        // true 
0.5 > 0.1    // true
3.5 <= 3.0   // false
12 >= 15     // false
"A" == "A"   // true 
"B" != "b"   // true


// 4 - If-Else If-Else Statement
var abbreviation = "EN"

if abbreviation == "EN" {
  print("English")
} else if abbreviation == "ES" {
  print("Spanish")
} else if abbreviation == "ZH" {
 print("Chinese")
} else if abbreviation == "RU" {
 print("Russian")
} else {
 print("Abbreviation not found") 
}


// 5 - Ternary Conditional Operator
var windy = true 

if windy {
  print("Sails up")
} else {
  print("Motor on")
}

windy ? print("Sails up") : print("Motor on") //abbreviated form.


// 6 - Switch Statement
var grade = "A"

switch grade {
  case "A":
    print("You did great!")
  case "B":
    print("You did good!")
  case "C":
    print("You did okay")
  case "D":
    print("You passed")
  case "F":
    print("Better luck next time")
  default:
    print("Not a valid grade")
}


// 7 - Switch Statement: Interval Matching
var age = 25

switch age {
  case 0...1: //closed range operator.
    print("Infant")
  case 2...3:
    print("Toddler")
  case 4...12:
    print("Child")
  case 13...19:
    print("Teenager")
  case 20...110:
    print("Adult")
  default:
    print("Age not in valid range")
}


// Switch Statement: Compound Cases
var planet = "Earth" 

switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
   print("Terrestrial planet") 
  case "Saturn", "Jupiter", "Uranus", "Neptune":
   print("Jovian planet") 
  default: 
   print("Unknown planet")
}


// 8 - Switch Statement: Where Clause
var randomNumber = Int.random(in: 0...10)
print(randomNumber)

switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}