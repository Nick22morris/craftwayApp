//
//  HomeView.swift
//  Kraftway
//
//  Created by Nick Morris on 9/17/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, alignment: .center)
                .padding(50)
            ZStack {
                Image("home")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity, alignment: .center)
                    .blur(radius: 3.0)
                VStack {
                    Text("Local Neighborhood gathering spot")
                        .bold()
                        .font(.caption)
                        .textCase(.uppercase)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("Your home \naway from home.")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, alignment: .center)
                    Spacer()
                    Text("5809 PRESTON RD – STE 578\nPLANO, TX 75093")
                        .bold()
                        .font(.caption)
                        .textCase(.uppercase)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(30)
                }
            }
            //.padding(30)
            Divider()
            HStack {
                VStack{
                    Text("CRAVEABLE DISHES")
                        .bold()
                        .font(.caption)
                        .textCase(.uppercase)
                        .padding(.bottom, 20)
                        .multilineTextAlignment(.center)
                        .padding(.leading, 50)
                    Text("Enjoy a Bite")
                        .font(.title)
                        .padding(.bottom, 20)
                        .multilineTextAlignment(.center)
                        .padding(.leading, 50)
                    Text("CraftWay Kitchen features great food with a weekend brunch and a full bar with premium cocktails. Our team is full of passion and dedicated to delivering the perfect experience.")
                        .frame(width: 175, height: 100)
                        .multilineTextAlignment(.center)
                            .lineLimit(7)
                        .font(.custom("arial black", size: 12))
                        .padding(.leading, 50)
                        
                }
                Image("sandwich")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .frame(width: 170, height: 100, alignment: .leading)
                    .padding(40)
            }
            //.padding(30)
            Divider()
            ZStack{
                Image("people")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, alignment: .center)
                    .blur(radius: 3.0)
                VStack {
                    Text("PROFESSIONALLY CASUAL")
                        .bold()
                        .font(.caption)
                        .textCase(.uppercase)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("Good Food.\nGood Friends.")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Text("A favorite spot with the locals, expect a lively, bustling atmosphere each evening. Local artwork, open kitchen and a welcoming staff greet you at the door. It’s our craveable food that keeps our regulars coming back for more.")
                        .bold()
                        .font(.caption)
                        .textCase(.uppercase)
                        .foregroundColor(.white)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: 400, height: 100, alignment: .center)
                        
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
