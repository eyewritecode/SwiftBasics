// ENUMS

let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

func dayType(for day: String) -> String {
    switch day {
        case "Sunday", "Saturday": return "Weekend"
        case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
        default: return "This is isn't a valid day"
    }
}

func isNotificationMuted(on day: String) -> Bool {
    if dayType(for: day) == "Weekend"{
        return true
    }else{
        return false
    }
    
}

let day = week[0]
let muted = isNotificationMuted(on: day)


enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekday, weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
        case Day.sunday, Day.saturday: return DayType.weekend
    default: return DayType.weekday
        //No need of default because ENUM takes care of it
    }
}


func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekday: return false
    case .weekend: return true
    }
}

import UIKit
enum ColorComponent {
    case rgb(Float, Float, Float, Float)
    case hsb(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor{
        switch self{
            case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha): return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
            
        }
    }
}

ColorComponent.rgb(61.0, 120.1, 198.0, 1.0).color()

// RAW VALUES

enum Coin: Double {
    case penny = 0.001
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.025
}

let coins: [Coin] = [.penny, .nickel, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double{
    var total: Double = 0
    for coin in coins {
        total += coin.rawValue
    }
    return total
}







