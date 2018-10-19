// Loops

var todo: [String] = ["Finish this tutorial", "Make an app", "become a millionaire", "retire on an island"]

// Printing array elements

print(todo[0])

// for loop

for task in todo {
    print(task)
}

// looping over Ranges

for number in 1...10{
    print("\(number) times 5 is equal to \(number * 5)")
}

// While loop

var x = 0
while x <= 5 {
    print(x)
    x += 1
}

var index = 0

while index < todo.count{
    print(todo[index])
    index += 1
}

// Repeat While

var test = 4
repeat {
    print("ALL I DO IS REPEAT MYSELF UNTIL ")
} while test<2


// If statements

var temperature = 22

if temperature < 18 {
    print("寒いですねー")
}

// Switch Statements

let airportCodes = ["KIX", "NRT", "HND"]
switch airportCodes[1] {
    case "KIX": print("Kansai")
    case "NRT": print("Narita")
    case "HND": print("Haneda")
default: print("I'm a default message")
}











