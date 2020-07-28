import UIKit

struct Customer : Equatable{
    let name: String
    let age: Int
    let items: Array<GroceryItem>
    
    static func == (lhs: Customer, rhs: Customer) -> Bool {
        if lhs.name == rhs.name {
            return true
        }
        else {
            return false
        }
    }
}

protocol GroceryItem {
    func cost() -> Double
}

struct Apple: Equatable, Comparable, Hashable, GroceryItem  {
    static func < (lhs: Apple, rhs: Apple) -> Bool {
        rhs.cost() < lhs.cost()
    }
    
    func cost() -> Double {
        price
    }
    
    let name: String
    let price: Double
    
    static func == (lhs: Apple, rhs: Apple) -> Bool {
         print("It is working")
         return lhs.name == rhs.name && lhs.price == rhs.price
     
    }
    
    
}

struct Pizza: Equatable, GroceryItem {
    func cost() -> Double {
        price
    }
    
    let name: String
    let price: Double
}

struct GrocerryStore {
    func printRecept(person: Customer) {
        var total = 0.0
        for item in person.items {
            if let item = item as? GroceryItem {
                total = total + item.cost()
            }
        }
        print("Total is \(total)")
    }

}

let greenApple = Apple(name: "Green Apple", price: 1.99)
let blueApple = Apple(name: "Blue Apple", price: 1.93)
let pinkApple = Apple(name: "Pink Apple", price: 0.34)
let poisinedApple = Apple(name: "Posion Apple", price: 2.67)
let allApples = [ greenApple, pinkApple, blueApple, poisinedApple ]

let greenApple2 = Apple(name: "Green Apple", price: 1.99)
let cheesePizza = Pizza(name: "Cheese Pizza", price: 10)
let rithya = Customer(name: "Rithya", age: 15, items: [greenApple, cheesePizza])

let rithya2 = rithya

let cheesePizza2 = cheesePizza

if( cheesePizza2 == cheesePizza) {
    print("sdf")
}


if rithya == rithya2 {
    print(rithya2)
    print(rithya)
}
let walmart = GrocerryStore()
walmart.printRecept(person: rithya)
if greenApple == greenApple2 {
    print("true")
}
else {
    print("false")
}
 


var numbers = [8,45,24,74,13]
var letters = ["l","k","s","x","q"]
print ( numbers.sorted { $0 <= $1 } )
print ( numbers.sorted { $0 >= $1 } )
print (numbers.drop(while: {$0 < 10}))
print (numbers.split(whereSeparator: { $0 > 15 }))
print(letters.joined(separator: "/"))

typealias mustWrite = (String, Int) -> Void
let copyLines: mustWrite = {print (repeatElement("I must not \($0)", count: $1)) }
copyLines ("tell Lies", 9)


var family = ["Rithya", "Deepa", "Sriram", "Chitherabala", "Kalleeragen"]
print ( family.filter { $0.count >= 7 } )

var details = ["Rithya": 15, "Deepa": 45, "Sriram": 50, "Chitherabala": 20, "Kalleeragen": 65]

print( details.filter({ (name,age)  in
    age > 45
} ) )

print( details.map { (name, age) -> Int in age } )

enum Coins: Int {
   case pennies = 1
   case nickels = 5
   case dimes = 10
   case quaters = 35
}

let purse = [Coins.pennies, Coins.dimes, Coins.quaters]
purse.reduce(0) { (Result, coins) -> Int in
   Result + coins.rawValue
}
enum Direction {
    case north
    case south
    case east
    case west
}

func directionGame (movements: Array<Direction>) -> (Int,Int){
    var locaction = (x:0, y:0)
    for movement in movements{
        switch movement {
        case .east:
            print("Moved 1 to the right")
            locaction.x += 1
        case .west:
            print("Moved 1 to the left")
            locaction.x -= 1
        case .north:
            print("Moved 1 up")
            locaction.y += 1
        case .south:
             print("Moved 1 down")
            locaction.y -= 1
        }
    }
    return locaction
}

directionGame(movements: [.north, .west, .west])
directionGame(movements: [.north,.west,.east,.east,.south,.north])


struct Temperature {
    var fahrenheit: Double {
        didSet{
            if (fahrenheit > 100){
            print("Warning-- higher than 100")
            }
        }
    }
    var celsius: Double {
         return (fahrenheit - 32) / 1.8
    }
}
var monday = Temperature(fahrenheit: 20)
monday.fahrenheit = 130
monday.celsius


enum Season: String, CaseIterable {
  case winter, spring, summer, autumn
}



enum Month: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
  
    var monthsUntilJingleBells: Int {
        Month.december.rawValue - self.rawValue
  }
    
    var season: Season {
       switch self {
       case .december, .january, .february:
         return .winter
       case .march, .april, .may:
         return .spring
       case .june, .july, .august:
         return .summer
       case .september, .october, .november:
         return .autumn
       }
    }
}

var favoriteMonth = Month(rawValue: 3)
favoriteMonth?.monthsUntilJingleBells
favoriteMonth?.season







