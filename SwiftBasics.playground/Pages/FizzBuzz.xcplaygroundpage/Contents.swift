// FizzBuzz Challenge

/*

 Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
 
*/

func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if (n % 3 == 0) && (n % 5 == 0){
        return "FizzBuzz"
    }else if (n % 3 == 0){
        return "Fizz"
    }else if (n % 5 == 0){
        return "Buzz"
    }else{
        return "\(n)"
    }
}