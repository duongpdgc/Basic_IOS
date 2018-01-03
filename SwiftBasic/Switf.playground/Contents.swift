////: Playground - noun: a place where people can play
import UIKit

//func arNumbers (numbers: [Int]) -> (min: Int, max: Int) {
//    var min = numbers[0]
//    var max = numbers[0]
//
//    for number in numbers {
//        if number >= max {
//            max = number
//        } else if number <= min {
//                min = number
//        }
//    }
//    return (max, min)
//}
//let array = arNumbers(numbers: [5, 3, 100, 8, 9])
//print ( array.max , array.min)

//var n = 1
//while n < 100 {
//    print(n)
//}
//print(n)
//
//var m = 1
//repeat {
//    print(m)
//} while m < 100
//print(m)


//var array = [4, 14, 11, 18, 24, 23, 32];
//for myInt: Int in array {
//    let odd = "odd \(myInt)."
//    if myInt % 2 == 0 {
//        print(odd)
//    } else {
//        let even = "even \(myInt)."
//        print(even)
//    }
//}


//// create an empty Int array
//var arr = [Int]()
//// extend the array using a Range
//arr += 1...100
//for num: Int in arr {
//    let odd = "odd \(num)."
//    if num % 2 == 0 {
//        print(odd)
//    } else {
//        let even = "even \(num)"
//        print(even)
//    }
//}



//func str () -> [String] {
//    let arr = ["a","b"];
//    return arr
//}

//func numbers () -> (odd: [Int], even: [Int]){
//    let array = [Int](0..<100)
//    var odd = arr[0]
//    var even = arr[0]
//
//    for arr in array {
//        if arr % 2 == 0 {
//            odd = arr
//        } else if arr % 2 !== 0 {
//            even = arr
//        }
//    }
//    return (odd, even)
//}

//let numberSymbol: Character = "三"  // Chinese symbol for the number 3
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "١", "一", "๑":
//    possibleIntegerValue = 1
//case "2", "٢", "二", "๒":
//    possibleIntegerValue = 2
//case "3", "٣", "三", "๓":
//    possibleIntegerValue = 3
//case "4", "٤", "四", "๔":
//    possibleIntegerValue = 4
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    print("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    print("An integer value could not be found for \(numberSymbol).")
//}
//

//print("****")
//print("****")
//print("****")
//print("****")


//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//var numbers = [20, 19, 7, 12]
//hasAnyMatches(list: numbers, condition: lessThanTen)
//numbers.map({ (number: Int) -> Int in
//    let result = 3 * number
//    return result
//})
//let mappedNumbers = numbers.map({ number in 3 * number })
//print(mappedNumbers)
//let sortedNumbers = numbers.sorted { $0 > $1 }
//print(sortedNumbers)


//class Counter {
//    var count = 0
//    func increment() {
//        count += 1
//    }
//    func increment(by amount: Int) {
//        count += amount
//    }
//    func reset() {
//        count = 0
//    }
//}


//class Shape {
//    var numberOfSides = 0
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//var shape = Shape()
//shape.numberOfSides = 7
//var shapeDescription = shape.simpleDescription()
//class NamedShape {
//    var numberOfSides: Int = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//class Square: NamedShape {
//    var sideLength: Double
//
//    init(sideLength: Double, name: String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        numberOfSides = 4
//    }
//
//    func area() -> Double {
//        return sideLength * sideLength
//    }
//
//    override func simpleDescription() -> String {
//        return "A square with sides of length \(sideLength)."
//    }
//}
//let test = Square(sideLength: 5.2, name: "my test square")
//test.area()
//test.simpleDescription()
//class EquilateralTriangle: NamedShape {
//    var sideLength: Double = 0.0
//
//    init(sideLength: Double, name: String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        numberOfSides = 3
//    }
//
//    var perimeter: Double {
//        get {
//            return 3.0 * sideLength
//        }
//        set {
//            sideLength = newValue / 3.0
//        }
//    }
//
//    override func simpleDescription() -> String {
//        return "An equilateral triangle with sides of length \(sideLength)."
//    }
//}
//var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//print(triangle.perimeter)
//triangle.perimeter = 9.9
//print(triangle.sideLength)
//class TriangleAndSquare {
//    var triangle: EquilateralTriangle {
//        willSet {
//            square.sideLength = newValue.sideLength
//        }
//    }
//    var square: Square {
//        willSet {
//            triangle.sideLength = newValue.sideLength
//        }
//    }
//    init(size: Double, name: String) {
//        square = Square(sideLength: size, name: name)
//        triangle = EquilateralTriangle(sideLength: size, name: name)
//    }
//}
//var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
//print(triangleAndSquare.square.sideLength)
//print(triangleAndSquare.triangle.sideLength)
//triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
//print(triangleAndSquare.triangle.sideLength)
//let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
//let sideLength = optionalSquare?.sideLength


//class square {
//    func paintSquare () -> [String] {
//        let square = []
//        for paintSquare in square {
//        }
//        return square
//    }
//}


//func arNumbers (numbers: [Int]) -> (min: Int, max: Int, center: Int) {
//    var min = numbers[0]
//    var max = numbers[0]
//    var center = numbers[0]
//    for number in numbers {
//        if number >= min {
//            min = number
//        } else if number <= max {
//                max = number
//        } else max >= number >= min{
//            center = number
//        }
//    }
//    return (max, min, center)
//}
//let array = arNumbers(numbers: [100, 8, -9])
//print ( array.max , array.min, array.center)


//
//var arr = [Int]()
//arr += 1...100
//print(arr)
//
//
//var edge = 5
//for


//for i in 0..<4 {
//    var sao = ""
//    for j in 0..<4 {
//        sao.append("*")
//    }
//    sao.append("")
//    print(sao)
//}

//for i in 0...3{
//    for j in 0...3{
//        print("i: \(i)")
//        print("j: \(j)")
//    }
//}
//print("a")


//for i in 0..<4 {
//    var sao = ""
//    for j in 0..<8 {
//        sao.append("*")
//    }
//    sao.append("")
//    print(sao)
//}



//var students = [5,6,4,5,3,6,8]
//students.sort()
//print(students)


//class Shape {
//    var numberOfSides = 0
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//
//
//class NamedShape {
//    var numberOfSides: Int = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}


//class Shape {
//    var numberOfSides = 0
//    func simpleDescription(numberOfSides: Int) -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//
//var shape = Shape()
//shape.numberOfSides = 7
//
//var shapeDescription = shape.simpleDescription(numberOfSides: 10)


//func triangle (number1: Int, number2: Int) -> () {
//    var sao = ""
//    for _ in 0..<number1 {
//        for _ in 0..<number2 {
//            sao += "* "
//            print(sao)
//        }
//    }
//}
//triangle(number1: 2, number2: 1)
//
//
//func edge (number1: Int, number2: Int) -> (){
//    for _ in 0..<number1 {
//         var sao = ""
//        for _ in 0..<number2 {
//            sao += "* "
//        }
//        print(sao)
//    }
//}
//edge(number1: 4, number2: 10)
func array (number: Int) -> () {
    for number1 in 0..<number {
        var a = " "
        for number2 in 0..<number {
            if number2 > number1 {
                a.append("* ")
            } else {
                a.append("")
            }
        }
        print(a)
    }
    return
}
array(number: 6)
