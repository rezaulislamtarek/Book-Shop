//
//  CartManager.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import Foundation

class CartManager : ObservableObject {
    @Published private (set) var books : [Book] = []
    @Published private (set) var total:Int = 0
    
    func addToCart(book : Book){
        books.append(book)
        total += book.price
    }
    
    func removeFromCart(book:Book){
        books = books.filter{
            $0.id != book.id
        }
        total -= book.price
    }
}
