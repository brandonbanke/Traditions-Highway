//
//  StructViews.swift
//  Traditions Highway
//
//  Created by Brandon Banke on 9/14/21.
//

import SwiftUI
import CoreLocation

struct ToolbarMenu: ToolbarContent {

    var body: some ToolbarContent {
        ToolbarItemGroup(placement: .bottomBar) {
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }, label: {
                Image(systemName: "magnifyingglass")
            })
         
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }) {
                Image(systemName: "house")
            }

        
            Spacer()
            
            Button(action: {
                print("Edit button was tapped")
            }, label: {
                Image(systemName: "star")
            })
            
            Spacer()
        }

    }
}

struct navButton: View {
    var imageName: String
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: 60, height: 60)
            .foregroundColor(color)
            .cornerRadius(5.0)
            .overlay(
            Image(systemName: imageName)
                .foregroundColor(.white)
            )
    }
}

struct startTripButton: View {
    var color: Color
    var title: String
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .frame(width: 200, height: 50)
            .foregroundColor(color)
            .overlay(
                Text(title)
                    .foregroundColor(.white)
            )
            .addBorder(Color.yellow, width: 5, cornerRadius: 20)
        }
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.white, radius: 20, x: 0, y: 0)
    }
}

struct CardView: View {
    
    var image: String
    var title: String
    var subTitle: String
    var description: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous).overlay(
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 110)
                .padding(.all, 20)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.black)
                Text(subTitle)
                    .font(.system(size: 8, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                HStack {
                    Text(description)
                        .font(.system(size: 10, weight: .bold, design: .default))
                        .foregroundColor(.black )
                        .padding(.top, 8)
                        .multilineTextAlignment(.leading)
                }
            }.padding(.trailing, 20)
            Spacer()
        }
            .frame(width: 305, height: 165, alignment: .center)
        .background(Color.white)
        .modifier(CardModifier())
        .padding(.all, 10)
        )
        .foregroundColor(.black)
        .frame(width: 310, height: 170, alignment: .center)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
    }
}

extension View {
     public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
         let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
         return clipShape(roundedRect)
              .overlay(roundedRect.strokeBorder(content, lineWidth: width))
     }
 }

