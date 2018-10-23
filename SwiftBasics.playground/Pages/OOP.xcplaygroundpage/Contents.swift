// OOP IN SWIFT

// STRUCTS

struct Point {
    let x: Int
    let y: Int
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1) -> [Point]{
        var results = [Point]()
        let lowerBoundOfXrange = x - range
        let upperBoundOfXrange = x + range
        
        let lowerBoundOfYrange = y - range
        let upperBoundOfYrange = y + range
        
        for xCoordinate in lowerBoundOfXrange...upperBoundOfXrange{
            for yCoordinate in lowerBoundOfYrange...upperBoundOfYrange{
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0) // Instance of point

coordinatePoint.points()

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    
    init(red: Double, green: Double, blue: Double, alpha: Double){
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}