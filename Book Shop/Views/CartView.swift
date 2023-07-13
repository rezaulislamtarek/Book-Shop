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
        ScrollView{
            Text("Your cart is empty")
        }
        // .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
             .environmentObject(CartManager())
    }
}
