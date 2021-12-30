//
//  MenuView.swift
//  Kraftway
//
//  Created by Nick Morris on 9/17/21.
//

import SwiftUI
struct MenuView: View {
    @ObservedObject var omni = MenuFoods()
    @State var input = "starters"
    @State var count = 2
    //["Starters", "Soups and Salads", "Sandwiches","Entreés","Sides"]
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.yellow)
                    .ignoresSafeArea(.all, edges: .bottom)
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(things, id: \.name) { thing in
                                Button(action: {
                                    omni.changeQ(val: thing.val)
                                }, label: {
                                    ZStack {
                                        Text(thing.name)
                                            .foregroundColor(.black)
                                            .bold()
                                            .font(.headline)
                                    }
                                })
                                    .padding()
                            }
                        }
                    }
                    ScrollView (.vertical, showsIndicators: false){
                        VStack(alignment: .leading, spacing: 80) {
                            ForEach(omni.q, id: \.name) { item in
                                fancy(item: item)
                            }
                        }
                        
                    }
                    //Spacer()
                }
            }
            .navigationTitle("Menu")
        }
    }
    //    struct selectButton: View {
    //        let text: String
    //        let t : [foodDataType]
    //        var body: some View {
    //            Button(action: {
    //                omni.changeQ(val: t)
    //            }, label: {
    //                ZStack {
    //                    Text(text)
    //                        .foregroundColor(.white)
    //                        .bold()
    //                        .font(.headline)
    //                        //.background(Color.blue)
    //                        //.clipShape(Capsule())
    //                }
    //            })
    //            .padding()
    //        }
    //    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
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
struct dualFoodDisplay: View {
    let name: String
    let price: String
    let image: String
    var body: some View {
        
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140, height: 140, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .overlay(RoundedRectangle(cornerRadius: 25.0)
                            .stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
                .padding()
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 170, height: 100, alignment: .center)
                    .foregroundColor(.white)
                VStack {
                    Text(name)
                        .bold()
                        .foregroundColor(.black)
                    Text(price)
                        .foregroundColor(.black)
                }
            }
            .padding()
        }
    }
}
struct fancy: View {
    let item: foodDataType
    let wi = 350.0
    var body: some View {
        VStack {
            Text(item.name)
                .foregroundColor(.black)
                .bold()
                .multilineTextAlignment(.center)
                .frame(width: wi)
            Text(item.description)
                .italic()
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.leading)
                .frame(width: wi)
            Text(item.price)
            //.padding()
                .foregroundColor(.black)
                .frame(width : 100)
        }
    }
}
