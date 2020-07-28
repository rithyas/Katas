import UIKit

func calculator (operation: Int,num1: Int, num2: Int) {
    switch operation {
    case 1:
        print(" \(num1) plus \(num2) is \(add(num1: num1, num2: num2))")
    case 2:
        print(" \(num1) minus \(num2) is \(subtract(num1: num1, num2: num2))")
    case 3:
        print(" \(num1) times \(num2) is \(multiply(num1: num1, num2: num2))")
    case 4:
        print(" \(num1) divided by \(num2) is \(divide(num1: num1, num2: num2))")
    default:
        break
    }
}

func add(num1: Int, num2: Int) -> Int {
    return (num1 + num2)
}
func subtract (num1: Int, num2: Int) -> Int {
    return (num1 - num2)
}
func multiply (num1: Int, num2: Int) -> Int {
    return (num1 * num2)
}
func divide (num1: Int, num2: Int) -> Int {
    return (num1 / num2)
}
calculator(operation: 2, num1: 4, num2: 7)
calculator(operation: 4, num1: 88, num2: 2)

func merchantShop (){
    var shopItemsArray = ["Spell Book", "Sheild", "Potion"]
    var shopItemsDictionary = ["Spell Book" : 15, "Sheild" : 20, "Potion" : 35]
    shopItemsArray.contains("Magic Map")
    shopItemsArray.insert("Magic Map", at: 2)
    let selectedItem = shopItemsArray[0]
    let selectedItemPrice = shopItemsDictionary[selectedItem]
    
    var fullArmorSet : Set = ["Gold", "Steel", "Wood", "Diamond"]
    var currentArmorSet : Set = ["Gold", "Steel"]
    var needArmor : Set = fullArmorSet.subtracting(currentArmorSet)
    
    var armorPeiceTuple = (name: "Diamond", cost: 800, available: false)
    var price = armorPeiceTuple.cost
    
}

String
merchantShop()

func minAndMax (numbers: Array<Int>) -> (Int?, Int?){
   let temp = numbers.sorted()
    let min = temp.first
    let max = temp.last
    return (min,max)
}
minAndMax(numbers: [5,2,75,34,13,9,0])


typealias attack = (name: String, damage: Int)
func attackEnemy(level: Int) {
    print("Your level is at \(level)")
}
func attackEnemy (input :attack) -> String{
    return ("Your attack \(input.name) dealt \(input.damage) ")
}
attackEnemy(level: 6)
var message = attackEnemy(input: (name:"Mighty Blow", damage:800))



