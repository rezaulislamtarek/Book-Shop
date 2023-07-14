//
//  CartView.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cm : CartManager
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){
                if cm.books.count > 0 {
                    ForEach(cm.books, id: \.id){ book in
                        BookRow(book: book)
                    }
                    HStack {
                        Text("Your cart total is ")
                        Spacer()
                        Text("\(cm.total) TK").font(.title3)
                    }.padding()
                         
                }else{
                    Text("Your cart is empty")
                }
            }
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
             .environmentObject(CartManager())
    }
}
