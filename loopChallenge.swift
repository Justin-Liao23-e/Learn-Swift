// Even or Odd
for num in 1...100 {
  if num % 2 == 0 {
    print("even #")
  } else {
    print("odd #")
  }
}

// Prime or Not
var p = 3
var count = 0

for num in 2...p - 1 {
  if p % num == 0 {
    count += 1
    break
  }
}

if count == 1 {
  print("Not Prime!")
} else {
  print("Prime!")
}