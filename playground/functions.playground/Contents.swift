//: Playground - noun: a place where people can play

import UIKit

//
//func funA()
//{
//    print("Fun A")
//}
//
//func funB()
//{
//    print("Fun B")
//}
//
//
//func funC()
//{
//    print("Fun C")
//}
//
//funA()


var bankAccount = 500.50
var itemAmount = 400.23

func canPurchase(amount: Double) -> Bool
{
    if bankAccount >= amount
    {
        return true
    }
    return false
}

func processPurchase(amt: Double)
{
    bankAccount -= amt
    print("You made a purchase of the amount \(amt)")
}

if canPurchase(itemAmount)
{
    processPurchase(itemAmount)
}
else
{
    print("Insufficient funds")

}

var name = "sweeny todd"

func getUpperVersion(inputString: String) -> String
{
    return inputString.uppercaseString
}

var nameUpper = getUpperVersion(name)


func declareWinner(playerAScore: Int, PlayerBScore: Int)
{
    if playerAScore > PlayerBScore
    {
        print("Player A wins")
    }
    else if PlayerBScore > playerAScore
    {
        print("Player B wins")
    }
    else
    {
        print("The game is at a standstill!!")
    }
}

declareWinner(30, PlayerBScore: 30)





//func attemptPurchase(amount: Double)
//{
//    if bankAccount >= amount
//    {
//        bankAccount -= amount
//    }
//    else
//    {
//        print("Insufficient funds!")
//    }
//    //amount = 5.0
//    //print(amount)
//}
//
//attemptPurchase(itemAmount)