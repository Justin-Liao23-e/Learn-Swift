// A program that encrypts a message by shifting each letter three places to the right.
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var secretMessage = "Oh Hi".lowercased()
print(secretMessage)
var message = Array(secretMessage)
print(message)

for i in 0...message.count - 1 {
  for j in 0...alphabet.count - 1 {
    if message[i] == alphabet[j] {
      message[i] = alphabet[(j+3) % 26]
      break
    }
  }
}

print(String(message))