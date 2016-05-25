//: Playground - noun: a place where people can play

import UIKit

//Array literal
var names = ["Jon", "Jacob", "Jingle", "Heimer", "Smith"]


var names2: [String]
//names2 = ["string", "string2"]

var someWord: String = "word"

var numbers = [44, 223, 12, 4]

var peopleHotOrNot = [true, false, true]

var mixed = ["Jon", 20, "30", true] //Yes - but don't do it

var countries = [String]()

var top3Colors = [String](count: 3, repeatedValue: "Boring Brown")

top3Colors[0] = "Blue"
top3Colors[1] = "Red"
top3Colors[2] = "Burlywood"

var favCars = [String]()
favCars.append("BMW M#")
favCars.append("Audi S7")
favCars.append("Ford Pinto")
favCars.removeAtIndex(2)
favCars.append("BENZ")
favCars.insert("TT", atIndex: 2)

var shoppingCart = [String]()
var budget = 500.0
var currentCartAmunt = 0.0

func addItemToCart(item: String, price: Double)
{
    if currentCartAmunt + price <= budget
    {
        shoppingCart.append(item)
        currentCartAmunt += price
    }
    else
    {
        print("Not enough money")
    }
}

addItemToCart("Final Fantasy X2", price: 50.25)
print(currentCartAmunt)
addItemToCart("Bleach", price: 3.45)
print(currentCartAmunt)