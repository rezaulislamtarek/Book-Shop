//
//  ContentView.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartMgr = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20) ]
    var body: some View {
        NavigationView {
                ScrollView {
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(bookList, id:\.id){ book in
                                BookCard(book: book)
                                    .environmentObject(cartMgr)
                            }
                            
                        }
                    }.padding()
                }
                .navigationTitle("Book Shop")
                .toolbar{
                    NavigationLink{
                        CartView()
                            .environmentObject(cartMgr)
                    }label: {
                        CartButton(numberOfBooks: cartMgr.books.count)
                    }
                    
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
