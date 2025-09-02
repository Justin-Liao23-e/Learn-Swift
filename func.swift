// 1 - Basic Function
func directionsToTimesSq() -> Void {
  print("Hello World!")
}

directionsToTimesSq()


// 2 - Function with Parameters & Return Value
func addTwoNumbers(num1: Int, num2: Int) -> Int {
    let sum = num1 + num2
    return sum
}

let result = addTwoNumbers(num1: 5, num2: 10) //note syntax for arguments.
print("The sum is \(result)")


// 3 - Argument Labels
var friendsList = [String]()

func addFriend(named friendName: String) { //noticed "named" is the argument label.
    friendsList.append(friendName)
}

addFriend(named: "Alice")
addFriend(named: "Bob")
print(friendsList)


// 4 - Omitting Argument Labels
let 1stTeamScore = 5
let 2ndTeamScore = 7

func findWinner(_ firstPoints: Int, secondPoints: Int) -> String { //note the underscore.
  if firstPoints > secondPoints {
   return "Team 1 is the winner"
  } else {
   return "Team 2 is the winner" 
 }
}

print(findWinner(1stTeamScore, secondPoints: 2ndTeamScore))


// 5 - Returning Multiple Values
func favoriteCuisine() -> (name: String, dish: String) {
  return ("Russian", "Pelmeni") 
}

let cuisine = favoriteCuisine()
print("My favorite \(cuisine.name) dish is \(cuisine.dish)!")


// 6 - Function with Default Parameters
func bookingTicket(passengerName: String = "Justin", seatClass: String = "Economy", timeOfDeparture: Int) -> String {
  return "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture)."
}

print(bookingTicket(timeOfDeparture: 9))
print(bookingTicket(seatClass: "Business", timeOfDeparture: 9))


// 7 - Variadic Parameters: Accepting Multiple Values
func avgSongLength(times: Int...) -> Int {
  var total = 0
  for time in times {
    total += time
  }
  
  return total / times.count
}

print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))


// 8 - In-Out Parameters
var currentGeneratorState = "Off"

func generators(powerOutage: Bool, state: inout String)  {
  if powerOutage {
    state = "On"
  } else {
    state = "Off"
  }
}

generators(powerOutage: true, state: &currentGeneratorState)
print(currentGeneratorState)