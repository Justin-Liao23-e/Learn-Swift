// Morse Code Decoder
var englishText = "this is a secret message".lowercased()
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var letterToMorse = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]

var morseText = "" //encrypted messsage (result 1).

for element in englishText {
  if let morseChar = letterToMorse["\(element)"] {
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}

print(morseText) //result 1.

var decodedMessage = "" //result 2.
var morseCodeArray = [String]() //array of morse code characters to iterate through.
var currMorse = "" //temporary morse character for tracking which character we are on.

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
      case "": //second space of 3 (seperate words).
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default: 
        morseCodeArray.append(currMorse) //1 word.
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse) //final char.
print(morseCodeArray)

var morseToLetter: [String: String] = [:]

for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

// Decoding the Message
for morseValue in morseCodeArray{ 
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}

print(decodedMessage) //result 2.