//
//  Book.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import Foundation

struct Book : Identifiable{
    var id = UUID()
    var name : String
    var price : Int
    var image : String
}

var bookList = [
    Book(name: "C programming", price: 250, image: "cbook"),
    Book(name: "Cracking the coding interview", price: 750, image: "cci"),
    Book(name: "C plus plus", price: 450, image: "cpp"),
    Book(name: "IOS Dev 1", price: 350, image: "ios"),
    Book(name: "IOS Dev 2", price: 550, image: "ios2"),
    Book(name: "IOS 3", price: 920, image: "ios3"),
    Book(name: "OOP with Java", price: 350, image: "oopjava"),
    Book(name: "Learn Swift", price: 550, image: "swift"),
]
