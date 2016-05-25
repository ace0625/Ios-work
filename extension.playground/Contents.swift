//: Playground - noun: a place where people can play

import UIKit

var account1 = 400.00
var account2 = 512.00
var account3 = 600.12

print("$\(account1)")
print("$\(account2)")
print("$\(account3)")

extension Double
{
    var currency: String{
        return "$\(self)"
    }
}

print(account1.currency)
print(account2.currency)
print(account3.currency)