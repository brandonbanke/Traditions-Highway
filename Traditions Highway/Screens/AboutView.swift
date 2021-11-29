//
//  AboutView.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 11/29/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("ABOUT")
                    .font(.custom("Nexa Bold", size: 18))
                
            }
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
