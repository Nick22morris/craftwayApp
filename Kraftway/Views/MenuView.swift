//
//  MenuView.swift
//  Kraftway
//
//  Created by Nick Morris on 9/17/21.
//

import SwiftUI

struct MenuView: View {
    @State var input = "starters"
    @State var inputCollection = starters
    @State var count = 2
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.yellow)
                    .ignoresSafeArea(.all, edges: .bottom)
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            selectButton(text: "Starters")
                            selectButton(text: "Soups and Salads")
                            selectButton(text: "Sandwiches")
                            selectButton(text: "Entreés")
                            selectButton(text: "Sides")
                        }
                    }
                    ScrollView (.vertical, showsIndicators: false){
                        VStack(alignment: .leading, spacing: 80) {
                            ForEach(starters, id: \.name) { item in
                                FootDisplay(name: item.name, price: item.price, image: item.image)
                            }
                        }
                        
                    }
                    Spacer()
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct selectButton: View {
    let text: String
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            ZStack {
                Text(text)
                    .foregroundColor(.white)
                    .bold()
                    .font(.headline)
                    //.background(Color.blue)
                    //.clipShape(Capsule())
            }
        })
        .padding()
    }
}

struct FootDisplay: View {
    let name: String
    let price: String
    let image: String
    var body: some View {
        ZStack {
            ZStack {
                Color(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .frame(width: 160, height: 100, alignment: .center)
                VStack {
                    
                    Text(name)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text(price)
                        .multilineTextAlignment(.center)
                }
            }
            .offset( y: 80)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 100, alignment: .center)
                .clipShape(RoundedCornersShape(corners: [.topLeft, .topRight], radius: 25))
                //.clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            
        }
        .padding()
    }
}
struct BottomClipper: Shape {
    let bottom: CGFloat

    func path(in rect: CGRect) -> Path {
       RoundedRectangle(cornerRadius: 25.0).path(in: CGRect(x: 0, y: rect.size.height - bottom, width: rect.size.width, height: bottom))
    }
}
struct TopClipper: Shape {
    let top: CGFloat

    func path(in rect: CGRect) -> Path {
       RoundedRectangle(cornerRadius: 25.0).path(in: CGRect(x: 0, y: rect.size.height - top, width: rect.size.width, height: top))
    }
}
struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
