// Collections and Control Flow

// Arrays

var todo: [String] = ["Finish this tutorial", "Make an app", "become a millionaire", "retire on an island"] // because of Swift Type safety, You can't add a different data type in the array
var digits: [Int] = [1,2,5,3]

// Adding elements to arrays with append

todo.append("Start a youtube channel")

// Array concatenation

todo += ["Become a twitter motivational speaker"]

// Immutable arrays

let anotherArray = ["MON", "TUE", "WED"]
// anotherArray.append("THU") returns Error


// Reading from Arrays

let firstTask = todo[0]

// Modifying (mutating) Array values

todo[0] = "Stop procrastinating"

// Insert value at a specific position

todo.insert("Finish this tutorial", at: 1)

// Removing items from Arrays
todo
todo.remove(at: 0)
todo

// Size of Array

todo.count