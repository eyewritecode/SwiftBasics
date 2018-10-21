// Functions

func area(length: Int, width: Int){
    
    let areaOfRoom = length * width
    print(areaOfRoom)
}

area(length: 12, width: 10)

// RETURN TYPE

func newArea(length: Int, width: Int) -> Int{
    
    let areaOfRoom = length * width
    return areaOfRoom
}

let area1 = newArea(length: 2, width: 22)

// INTERNAL(second param) AND EXTERNA(first param)L PARAMETER NAMES

func carpetCost(havingArea area: Int, carpetColor color: String) -> Int{
    switch color {
    case "gray":
        price = area * 1
    case "tan":
        price = area * 2
    case "blue":
        price = area * 4
    default:
        price = 0
    }
    
    return price
}

carpetCost(havingArea: area1, carpetColor: "blue")











