//
//  BookRow.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import SwiftUI

struct BookRow: View {
    @EnvironmentObject var cm : CartManager
    var book : Book
    var body: some View {
        HStack(spacing:20){
            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing:  10){
                Text(book.name)
                Text("Tk: \(book.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cm.removeFromCart(book: book)
                }
            
        }.padding()
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: bookList[1])
    }
}
