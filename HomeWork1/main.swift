//
//  main.swift
//  HomeWork1
//
//  Created by Re:Zero on 23.03.2021.
//

import Foundation
import Darwin.C.math
import Cocoa

//////////////////////
//Задание №1
//////////////////////
//Решение квадратного уравнения
    var a = 2.0
    var b = 10.0
    var c = 8.0
    var x1 = 0.0
    var x2 = 0.0

    var D = pow(b, 2)-4*a*c

    if (D<0)
    {
        print ("Нет корней")
    }

    if (D==0)
    {
        x1 = (-b+sqrt(D))/(2*a)
        print (x1)
    }

    if (D>0)
    {
        x1 = (-b+sqrt(D))/(2*a)
        x2 = (-b-sqrt(D))/(2*a)
        print (x1, x2)
    }


//Площадь, пириметр и гипотенуза треугольника
    var a = 10.0
    var b = 27.0
    var S = (a*b)/2
    var c = sqrt((a*a)+(b*b))
    var P = a+b+c
    print(S)
    print(P)
    print(c)


//Расчёт вклада
    var S = 5238450.0 //первоначальная сумма
    var x = 10.0 //процент
    var n = 5.0 //срок вклада
    var S2 = S*pow(Double((1+(x/100))),n)
    print (S2)


////////////////
//Задание №2
///////////////

//1. Написать функцию, которая определяет, четное число или нет

var numberArray = [65, 92, 99, 51, 46, 93, 58, 59]

for sorting in numberArray{

    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }

}


//2. Написать функцию, которая определит делится ли число без остатка на 3.

for sortingTwo in numberArray{

    if sortingTwo % 3 == 0 {

        print("\(sortingTwo) делится на 3 без остатка")
    } else {
        print("\(sortingTwo) делится на 3 с остатком")
    }

}


//3. Создать возврастающий массив из 100 чисел.

var oneHundred: Array<Int> = []

for i in 1...100{

    oneHundred.append(i)
    
}

print(oneHundred)


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}

   print(toDelete)


//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacciArray(_ n: Int) -> [Double] {

    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci

}

print(fibonacciArray(100))


//6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

func primeNumbers(arrayPassed: [Int]) -> [Int] {

    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes

}

print(primeNumbers(arrayPassed: Array(2...100)))


/////////////////
//Задание №3
////////////////

enum engineState {

    case start, stop

}


enum windowState {

    case open, close

}


enum trunkState {

    case full, empty

}


struct someCar {

    let brand : String

    let model : String

    var color : String

    mutating func changeColor(c:String) {

        switch c {

        case "white":

            self.color = "white"

        case "black":

            self.color = "black"

        case "red":

            self.color = "red"

        case "blue":

            self.color = "blue"

        default:

            print("Input error.")

        }

    }

    let release : Int

    var trunkVolume : Double {

        willSet {

            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {

                let space = trunkVolume - newValue

                print ("\(brand)\(model) trunk free: \(space)")

            } else { print("Input error or \(brand)\(model) trunk is full.")}

        }

    }

    var engineState : engineState {

        willSet {

            if newValue == .start {

                print ("\(brand)\(model) engine is on")

            } else {print("\(brand)\(model) engine is off")}

        }

    }

    var windowState : windowState {

        willSet {

            if newValue == .open {

                print("\(brand)\(model) windows are open")

            } else { print("\(brand)\(model) windows are close") }

        }

    }

    var trunkState : trunkState

    mutating func emptyTrunck() {

        self.trunkState = .empty

        print ("\(brand)\(model) trunck is empty")

    }

}




struct someTruck {

    let brand : String

    let model : String

    var color : String

    mutating func changeColor(c:String) {

        switch c {

        case "white":

            self.color = "white"

        case "black":

            self.color = "black"

        case "red":

            self.color = "red"

        case "blue":

            self.color = "blue"

        default:

            print("Input error.")

        }

    }

    let release : Int

    var bodyVolume : Double {

        willSet {

            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {

                let space = bodyVolume - newValue

                print ("\(brand)\(model) trunk free: \(space)")

            } else { print("Input error or \(brand)\(model) trunk is full.")}

        }

    }

    var engineState : engineState {

        willSet {

            if newValue == .start {

                print ("\(brand)\(model) engine is on")

            } else {print("\(brand)\(model) engine is off")}

        }

    }

    var windowState : windowState {

        willSet {

            if newValue == .open {

                print("\(brand)\(model) windows are open")

            } else { print("\(brand)\(model) windows are close") }

        }

    }

    var trunkState : trunkState

    mutating func emptyTrunck() {

        self.trunkState = .empty

        print ("\(brand)\(model) trunck is empty")

    }

}




var car1 = someCar(brand: "Audi", model: "A6", color: "clear", release: 2017, trunkVolume: 480.0 , engineState: .stop, windowState: .open, trunkState: .empty)

var car2 = someCar(brand: "BMW", model: "740i", color: "clear", release: 2019, trunkVolume: 660.0, engineState: .stop, windowState: .close, trunkState: .full)




var truck1 = someTruck(brand: "SACANIA", model: "R", color: "clear", release: 2012, bodyVolume: 100000.0, engineState: .start, windowState: .open, trunkState: .full)

var truck2 = someTruck(brand: "Mercedes-Benz", model: "Atego", color: "clear", release: 2015, bodyVolume: 150000.0, engineState: .start, windowState: .close, trunkState: .empty)







car1.engineState = .start

car1.trunkVolume = 340.0

car1.changeColor(c: "red")

car2.trunkVolume = 890.0

car2.emptyTrunck()

car2.trunkVolume = 80.9

car2.windowState = .open

car2.changeColor(c: "black")




truck1.engineState = .stop

truck1.windowState = .close

truck2.engineState = .stop

truck2.bodyVolume = 5678908







print ("Information about the first car: brand&model: \(car1.brand)\(car1.model), release: \(car1.release), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine is \(car1.engineState)")


////////////////
//Задание №4
////////////////


enum Gender {

    case male, female

}


struct BirthDay {

    var day: Int

    var mounth : Int

    var year : Int

}


class User {

    var name: String = ""

    var gender: Gender

    var birthDay: BirthDay

    
    static var userCount = 0


    init(name: String, gender: Gender, birthDay: BirthDay) {

        self.name = name

        self.gender = gender

        self.birthDay = birthDay

        
        User.userCount += 1

    }

    
    deinit {

        User.userCount -= 1

    }

    
    static func countInfo() {

        print("Exist \(self.userCount) users.")

    }


    func howOldAreYou() {

        let age = 2018 - birthDay.year

        print("\(name)'s age is: \(age)")

    }

    
    func printInfo() {

        print("Here is some information about \(name): gender: \(gender), Birth Day: \(birthDay.day).\(birthDay.mounth).\(birthDay.year)")

        print(howOldAreYou())

    }
    
}


class ProfileAboutMe: User {

    var hobbie : String

    var myFavoriteBook : String

    var myFavoriteFilm : String

    var myFavoriteMusic : String

    var myFavoriteFood: String


    init(name: String, gender: Gender, birthDay: BirthDay, hobbie: String, myFavoriteBook: String, myFavoriteFilm: String, myFavoriteMusic: String, myFavoriteFood: String) {

        self.hobbie = hobbie

        self.myFavoriteBook = myFavoriteBook

        self.myFavoriteFilm = myFavoriteFilm

        self.myFavoriteMusic = myFavoriteMusic

        self.myFavoriteFood = myFavoriteFood

        
        super.init(name: name, gender: gender, birthDay: birthDay)

    }

    
    override func printInfo() {

        super.printInfo()

        print("And here is some information about \(name)'s favorite things: Hobbie is: \(hobbie), Favorite Book is: \(myFavoriteBook), Favorite Film is: \(myFavoriteFilm), Favorite Music is: \(myFavoriteMusic), Favorite Food is: \(myFavoriteFood)")

    }

    

}


class ProfileForJobSearching : User {

    var education : String

    var speciality : String

    var experience : String

    
    init(name: String, gender: Gender, birthDay: BirthDay, education: String, speciality: String, experience: String) {

        self.education = education

        self.speciality = speciality

        self.experience = experience
        

        super.init(name: name, gender: gender, birthDay: birthDay)

    }

    
    func addExperience(newExperience: String) {

        self.experience = experience + "," + newExperience

    }


    override func printInfo() {

        super.printInfo()

        print ("\(name)'s education: \(education), speciality: \(speciality), experience: \(experience)")

    }

}


var user1 = ProfileForJobSearching(name: "Kate", gender: .female, birthDay: .init(day: 13, mounth: 1, year: 1972), education: "SPBSMU named after Pavlov", speciality: "Oncologist", experience: "Clinician (1996 - 2007)")

user1.printInfo()

user1.addExperience(newExperience: "Medical Director (1996 - 2021)")

user1.printInfo()




var user2 = ProfileAboutMe(name: "Stas", gender: .male, birthDay: .init(day: 13, mounth: 1, year: 1999), hobbie: "AirSoft", myFavoriteBook: "'Idiot' F.M.Dostoevsky", myFavoriteFilm: "Fury", myFavoriteMusic: "Rock", myFavoriteFood: "Fish & Chips")

user2.printInfo()


print(User.countInfo())

//////////////////
//Задание №5
/////////////////


protocol fullNameOfObject {

    var fullName : String {get}

}

extension fullNameOfObject {

    var release : Int {return self as! Int}

}


class Music: fullNameOfObject {

    var musician : String

    var songName : String

    

    var release: Int
    

    init(musician: String, songName: String, release: Int) {

        self.musician = musician

        self.songName = songName

        self.release = release

    }

    
    var fullName: String {

        return ("'\(songName)'" + " ") + musician

    }

}


let myFavoriteSong = Music(musician: "AC/DC", songName: "Thunderstruck", release: 1990)

print(myFavoriteSong.fullName)


extension Music: CustomStringConvertible {

    var description : String {

        return "My favorite song is \(fullName), release: \(release)"

    }

}


print(myFavoriteSong.description)


class Car: fullNameOfObject {

    var brand: String

    var model: String

    var release: Int


    init(brand: String, model: String, release: Int) {

        self.brand = brand

        self.model = model

        self.release = release

    }
    

    var fullName: String {

        return (brand + " ") + model

    }

}


let myCar = Car(brand: "Audi", model: "A6", release: 2017)

print(myCar.fullName)


extension Car: CustomStringConvertible {

    var description : String {

        return "My car is \(fullName), release: \(release)"

    }

}


print(myCar.description)

///////////////
//Задание №7
///////////////

//возможные ошибки при попытке оплатить кредиткой

enum CreditCardOperationError: Error {

    //ошибка: недостаточно средств на карте

    case insufficientFunds (moneyNeeded: Double)

    //ошибка: баланс карточки заморожен банков по каким-то причинам

    case frozenBalance

}


//вещь, которую мы хотим приобрести, имеет цену

struct thing {

    var price: Double

}


class CreditCardOperation {

    //зафиксированный лимит для этой карты

    let limit: Double = -30000

    //изначальный баланс

    var balance: Double = 0

    //состояние карты, наша карта может быть заблокирована банком

    var cardIsBlocked = false

    

    //попытка приобрести вещь

    func buySomethig(thing: thing)throws {

        guard cardIsBlocked == false else{

            throw CreditCardOperationError.frozenBalance

        }

        //провека на возможность позволить купить себе эту вещь

        guard thing.price <= (-limit + self.balance) else {

            //рассчитывает необходимый остаток средств на карте с учётом лимита

            if balance < 0 {

                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit + balance)

            } else {

                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit - balance)

            }

        }

        //списываем деньги за вещь с карты

        balance = self.balance - thing.price

    }


    //функция для внесения какой-либо суммы денег

    func depositeMoney (someMoney: Double) {

        balance = self.balance + someMoney

    }

    
    //функция "узнай свой баланс"

    func printBalance() {

        print ("Balance is \(balance) rub")

    }


    //банк может заблокировать нашу карту

    func changeCardState(cardIsBlocked: Bool) {

        switch cardIsBlocked {

        case true:

            self.cardIsBlocked = true

        case false:

            self.cardIsBlocked = false

        }

    }

}



//ключевое улучшение кода: описанияе ошибок, чтобы упростить себе жизнь и вызов docatch()

extension CreditCardOperationError: CustomStringConvertible {

    var description: String {

        switch self {

        case .insufficientFunds(let moneyNeeded): return "There is not enough money on the card to carry out this operation. Your balance: \(operation.balance) rub, indispensably: \(moneyNeeded) rub"

        case .frozenBalance: return "Your balance is frozen for some reason. For more information, please contact the Bank."

        }

    }

}



let operation = CreditCardOperation()

do {

    try operation.buySomethig(thing: .init(price: 890.7))

} catch let error as CreditCardOperationError {

    print(error.description)

}

operation.printBalance()

operation.depositeMoney(someMoney: 10000)

operation.printBalance()

do {

    try operation.buySomethig(thing: .init(price: 70000))

} catch let error as CreditCardOperationError {

    print(error.description)

}

operation.printBalance()

do {

    try operation.buySomethig(thing: .init(price: 39109.3))

} catch let error as CreditCardOperationError {

    print(error.description)

}

operation.printBalance()




//банк заподозрил подозрительную активность по нашей карточке. Результат - баланс заморожен.

operation.changeCardState(cardIsBlocked: true)




//пытаемся купить что-то на 90 рублей.

do {

    try operation.buySomethig(thing: .init(price: 90))

} catch let error as CreditCardOperationError {

    print(error.description)

}


