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

// Classes

class Enemy{
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int){
        life-=factor
    }
}

class Tower{
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy){
        if isInRange(of: enemy){
            enemy.decreaseLife(by: strength)
            print("GOTCHA")
        }else{
            print("OUT OF RANGE")
        }
        
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        for point in availablePositions{
            if point.x == enemy.position.x && point.y == enemy.position.y{
                return true
            }
        }
        return false
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)

tower.fire(at: enemy)