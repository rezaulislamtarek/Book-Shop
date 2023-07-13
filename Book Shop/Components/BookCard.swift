//
//  BookCard.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import SwiftUI

struct BookCard: View {
    @EnvironmentObject var cm : CartManager
    var book : Book
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
           
            
            ZStack(alignment: .bottom){
                Image(book.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .aspectRatio( contentMode: .fit)
            
                
                VStack(alignment:.leading ){
                    Text(book.name)
                        .font(.subheadline)
                        .bold()
                    Text("\(book.price) tk")
                        .font(.caption)
                }.padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                cm.addToCart(book: book)
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            
        }
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: bookList[1])
            .environmentObject(CartManager())
    }
}
