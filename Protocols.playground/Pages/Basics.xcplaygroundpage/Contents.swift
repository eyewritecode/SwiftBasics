protocol FullNameable {
    var fullName: String { get }
}

struct User: FullNameable{
    var fullName: String
}

let user = User(fullName: "JOHN DOE")

struct Friend: FullNameable{
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String{
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "James", middleName: "007", lastName: "Bond")
friend.fullName

import Foundation

enum EmployeeType{
    case manager
    case traditional
}

protocol Payable{
    func pay() -> Paycheck
}

struct Paycheck{
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}

class Employee{
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable{
    var hourlyWage = 15.00
    var hoursWorked = 0.0
    let vacation = 0.0
    
    func pay() -> Paycheck{
        let wage = hourlyWage * hoursWorked
        return Paycheck(base: wage, benefits: 0, deductions: 0, vacation: vacation)
    }
}

class SalariedEmployee: Employee, Payable{
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> Paycheck{
        let wage = salary/12
        return Paycheck(base: wage, benefits: benefits, deductions: deductions, vacation: vacation)
    }

}

func acceptProtocolParameters(employee: Payable){
    employee.pay()
}

let theOffice = HourlyEmployee(name: "fakhfak", address: "fafha", startDate: Date(), type: EmployeeType.manager)

acceptProtocolParameters(employee: theOffice)



//protocol ColorSwitchable{
//    func switchColor(_ color: Color)
//}
//
//enum LightState {
//    case on, off
//}
//
//enum Color {
//    case rgb(Double, Double, Double, Double)
//    case hsb(Double, Double, Double, Double)
//}
//
//class WifiLamp: ColorSwitchable {
//    let state: LightState
//    var color: Color
//    
//    init() {
//        self.state = .on
//        self.color = .rgb(0,0,0,0)
//    }
//    
//    func switchColor(_ color: Color) {
//        self.color = color 
//    }
//}


// Loosely Related Types







