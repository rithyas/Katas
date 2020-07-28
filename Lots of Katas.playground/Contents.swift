import UIKit

//July 25 2020
func factorial(number: Int) -> Int {
    guard number == 0 else {
        return number * factorial(number: number-1)
    }
    //test
    return 1
}
print(factorial(number: 5))
print(factorial(number: 12))

//July 23 2020
func jumpingNumber(_ number: Int) -> String {
  let numberArray: Array = String(number).compactMap { Int(String($0)) }
  guard numberArray.count == 1 else {
    var counter = 0
    for num in numberArray {
        if counter + 1 != numberArray.count{
            counter += 1
        }
        else {
            break
        }
        if abs(num - numberArray[counter]) != 1  {
            return ("Not!!")
        }
    }
    return ("Jumping!!")
    }
    return ("Jumping!!")
}

print(jumpingNumber(2))
print(jumpingNumber(89098))
print(jumpingNumber(32))
print(jumpingNumber(123456789))



//July 23 2020
func disariumNumber(_ number: Int) -> String {
    let numberArray: Array = String(number).compactMap { Double(String($0)) }
    var final = 0.0
    var i = 1.0

    for digit in numberArray {
        final += pow(digit, i)
        i += 1
    }

    if Int(final) == number {
        return ("Disarium !!")
    }
    else {
        return("Not !!")
    }
}
print(disariumNumber(564))
print(disariumNumber(89))
print(disariumNumber(135))

//July 22 2020
func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    if  array.count <= 1 {
        return array.reduce(0){$0*10 + $1}
    }
    let sortedArray = mixArray.sorted()
    var place = 0
    for num in array {
        if num != sortedArray[place] {
            return num
        }
        place += 1
    }
    return 0
    }
print( findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]) )

//July 21 2020
func toNato(_ words: String) -> String {
    let nato = [
    "A"    : "Alfa",
    "B"    : "Bravo",
    "C"    : "Charlie",
    "D"    : "Delta",
    "E"    : "Echo",
    "F"    : "Foxtrot",
    "G"    : "Golf",
    "H"    : "Hotel",
    "I"    : "India",
    "J"    : "Juliett",
    "K"    : "Kilo",
    "L"    : "Lima",
    "M"    : "Mike",
    "N"    : "November",
    "O"    : "Oscar",
    "P"    : "Papa",
    "Q"    : "Quebec",
    "R"    : "Romeo",
    "S"    : "Sierra",
    "T"    : "Tango",
    "U"    : "Uniform",
    "V"    : "Victor",
    "W"    : "Whiskey",
    "X"    : "Xray",
    "Y"    : "Yankee",
    "Z"    : "Zulu"
    ]
    let word = words.replacingOccurrences(of: " ", with: "").uppercased()
    var final = ""
    for letter in word {
        final += nato[String(letter)] ?? String(letter)
        final += " "
    }

    final.removeLast()
    return final
}

print(toNato("Joker?"))
print(toNato("SOMETIMES I JUST WANNA BE HAPPY!!"))

//July 20 2020
func expandedForm(_ num: Int) -> String {
    let number = String(num).compactMap { Int(String($0)) }.reversed()
    var place = 1
    var total = Array<String>()

    for digit in number {
        if digit != 0 {
            total.append(String(digit*place))
            total.append(" + ")
        }
        place = place*10
    }
    total = total.reversed()
    total.removeFirst()
    return (total.joined())
    }

print (expandedForm (42))
print (expandedForm (70304))

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func angle(_ n: Int) -> Int {
   return 180 * (n-2)
}

func findDigit(_ num:Int, _ nth: Int) -> Int {
    var temp = num
    if num<0 {
        temp = -num
    }
    let temp1 = String(temp)
   if (nth <= 0 ){
    return -1
  }
    if (nth > temp1.count) {
    return 0
  }
   
    let temp2:Array = temp1.reversed()
    let final = (temp2[nth-1])
    return final.wholeNumberValue!
}

