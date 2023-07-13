//
//  CartButton.swift
//  Book Shop
//
//  Created by Rezaul Islam on 13/7/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfBooks: Int
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
               .padding(.top, 5)
           if numberOfBooks > 0{
               Text("\(numberOfBooks)")
                   .font(.caption2).bold()
                   .foregroundColor(.white)
                   .frame(width: 15, height: 15)
                   .background(.red)
                   .cornerRadius(50)
               
           }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton( numberOfBooks: 2)
    }
}
