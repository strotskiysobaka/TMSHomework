//


import Foundation
import Foundation
import UIKit

class Lesson4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)
        func operationWithNums(sumOne: Int, sumTwo: Int) {
            print("\(sumOne) + \(sumTwo) =", sumOne + sumTwo)
        }
        func operationWithNums(subtraction: Int, subtractionTwo: Int) {
            print("\(subtraction) - \(subtractionTwo) =", subtraction - subtractionTwo)
        }
        func operationWithNums(multiplication: Int, multiplicationTwo: Int) {
            print("\(multiplication) * \(multiplication) =", multiplication * multiplicationTwo)
        }
        func operationWithNums(division: Int, divisionTwo: Int) {
            print("\(division) / \(divisionTwo) =", division / divisionTwo)
        }
        
        operationWithNums(sumOne: 76, sumTwo: 89)
        operationWithNums(subtraction: 90, subtractionTwo: 67)
        operationWithNums(multiplication: 5, multiplicationTwo: 7)
        operationWithNums(division: 40, divisionTwo: 20)
        
        
        //2. Вычислить сумму цифр четырехзначного числа
        
        func sumOfDigits(x: Int) -> Int {
            let sum = x % 10 + (x / 10) % 10 + (x / 100) % 10 + ( x / 1000) % 10
            return (sum)
        }
        print("Сумма цифр четырёхзначного числа = ", sumOfDigits(x: 1234))
        
        
        //3. Функция сравнения строк - "авб" больше "ввш"
        
        func comprasion (firstWord: String , secondWord: String) -> String {
            if firstWord > secondWord {
                return ("\(firstWord) больше чем \(secondWord)")
            }  else if firstWord == secondWord {
                return ("строки равны")
            } else {
                return ("\(firstWord) меньше чем \(secondWord)")
            }
        }
        let result = comprasion(firstWord: "авб", secondWord: "ввш")
        print(result)
        
        
        //4. Циклический вызов функций - поломать приложение (оставлю закомментированным что бы не вылетала ошибка)
        //        func recursionFunc (value: Int) {
        //            recursionFunc(value: value + 1)
        //        }
        //        recursionFunc(value: 1)
        
        
        
        //5. Функция возведения в степень с дефолтным параметром
        
        func exponentiation(num: Int, degree: Int) {
            var answer = 1
            for _ in 1...degree {
                answer = answer * num

            }
            print("\(num) в \(degree) степени = \(answer)")
        }
        exponentiation(num: 3, degree: 3)
    }
}
