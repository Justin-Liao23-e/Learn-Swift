// 1 - Creating an Empty Array
var A = [Int]()
print(A)


// 2 - Creating an Array with a Default Value
var subwayAdult = [800, 1200, 1500]
print(subwayAdult)

var subwayChild: [Int] = [400, 600, 750]
print(subwayChild)
print(subwayChild[1]) //accessing an element.
print(subwayChild.count) //number of elements in the array.


// 3 - Appending an Element to an Array
subwayAdult.append(2000)
print(subwayAdult)

subwayAdult += [2500, 3000]
print(subwayAdult)


// 4 - Insert and Remove Elements
var dna = ["ATG", "ACG", "GAA", "TAT"]

dna.insert("GTG", at: 3)
dna.remove(at: 0)
print(dna)


// 5 - For Loop
var sum = 0
for number in subwayAdult {
    sum += number
}
print(sum)

for age in 1...25 {
  print("Are you \(age)")
}

var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."

for char in funFact {
  if char != "x" {
    print(char)
  }
}

// 6 - Stride Function
for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}


// 7 - No Smelly Code
for _ in 1...15 { //underscore to ignore the value.
  print("I will not write smelly code.") 
}


// 8 - Continue & Break Statement
for char in funFact {
  if char == "x" {
    continue //skips the current iteration and moves to the next one.
  }
  print(char)
}

var guessedNum = Int.random(in: 1...15)

for counter in 1...15 {
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break //exits the loop entirely.
  }
  print("Is it \(counter)?")
}


// 9 - While Loop
var countdown = 10
while countdown > 0 {
  print(countdown)
  countdown -= 1
}
print("Blast off!")


