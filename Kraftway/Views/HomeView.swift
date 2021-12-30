//
//  HomeView.swift
//  Kraftway
//
//  Created by Nick Morris on 9/17/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, alignment: .center)
                .padding(30)
            bottomPic(image: "home", top: "Local Neighborhood gathering spot", middle: "Your home \naway from home.", bottom: "5809 PRESTON RD – STE 578\nPLANO, TX 75093")
            sidePic(minor: "CRAVEABLE DISHES", title: "Enjoy a Bite", bottom: "CraftWay Kitchen features great food with a weekend brunch and a full bar with premium cocktails. Our team is full of passion and dedicated to delivering the perfect experience.", image: "sandwich")
            bottomPic(image: "people", top: "PROFESSIONALLY CASUAL", middle: "Good Food.\nGood Friends.", bottom: "A favorite spot with the locals, expect a lively, bustling atmosphere each evening. Local artwork, open kitchen and a welcoming staff greet you at the door. It’s our craveable food that keeps our regulars coming back for more.")
            sidePic(minor: "CRAFT COCKTAILS", title: "Take a Sip", bottom: "Built-by-hand cocktails with the finest ingredients curated by our in house drink experts.", image: "cock")
            bottomPic(image: "tuna", top: "FOOD IS LOVE", middle: "Come Hungry.\nLeave Happy.", bottom: "Start with high-quality ingredients and focus on letting those ingredients shine. We want to share our passion and welcome you to our home to enjoy warm hospitality and amazing food. From simple but always satisfying roasted tomato soup to a hearty ribeye, ")
            visit()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct sidePic: View {
    let minor: String
    let title: String
    let bottom: String
    let image: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .frame(width: 170, height: 100, alignment: .trailing)
                .padding()
            VStack{
                Text(minor)
                    .bold()
                    .font(.caption)
                    .textCase(.uppercase)
                    .padding(.bottom, 20)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 50)
                Text(title)
                    .font(.title)
                    .padding(.bottom, 20)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 50)
                Text(bottom)
                    .frame(width: 175, height: 100)
                    .multilineTextAlignment(.center)
                    .lineLimit(7)
                    .font(.custom("arial black", size: 12))
                    .padding(.trailing, 50)
                
            }
            
        }
    }
}

struct bottomPic: View {
    let image: String
    let top: String
    let middle: String
    let bottom: String
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, alignment: .center)
                .blur(radius: 3.0)
            Color(.black)
                .opacity(0.6)
            VStack {
                Text(top)
                    .bold()
                    .font(.caption)
                    .textCase(.uppercase)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(middle)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, alignment: .center)
                Spacer()
                Text(bottom)
                    .bold()
                    .font(.caption)
                    .textCase(.uppercase)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(30)
            }
        }
    }
}
struct visit: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 30, alignment: .center)
                .opacity(0)
            Link(destination: URL(string: "tel:9724030555")!) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.primary)
                        Text("(972) 403-0555")
                            .foregroundColor(.primary)
                    }
                }
            }
            Link(destination: URL(string: "https://craftwaykitchen.com/")!) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(.yellow)
                    HStack {
                        Image(systemName: "globe")
                            .foregroundColor(.primary)
                        Text("craftwaykitchen.com")
                            .foregroundColor(.primary)
                    }
                }
            }
            Rectangle()
                .frame(height: 30, alignment: .center)
                .opacity(0)
        }
    }
}
