//
//  ContentView.swift
//  SUI-HW2
//
//  Created by Дима on 4/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Hello User")
                        .fontWeight(.bold)
                        .font(.title3)
                        .lineLimit(1)
                    Text("Find your specialist")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .lineLimit(1)
                    
                    HStack(spacing: 20) {
                        Square(iconName: "mappin.and.ellipse", text: "Place", color: .blue)
                        Square(iconName: "phone.fill", text: "Phone", color: .green)
                        Square(iconName: "person.fill", text: "User", color: .orange)
                        //                Square(iconName: "mappin.and.ellipse", text: "Place", color: .blue)
                    }
                    
                    HStack {
                        Text("Top Doctor")
                            .fontWeight(.bold)
                            .font(.title)
                            .lineLimit(1)
                        Spacer()
                        Text("See all")
                            .font(.footnote)
                            .foregroundStyle(.cyan)
                            .lineLimit(1)
                    }.padding(.vertical)
                    
                    Announce(profileImage: "arrow.up.bin.fill", userName: "User Name", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", timeStart: "10:40 am", timeEnd: "2:40 pm", price: "10.50")
                    Announce(profileImage: "note", userName: "User 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", timeStart: "11:20 am", timeEnd: "3:40 pm", price: "18.70")
                    Announce(profileImage: "arrowshape.left", userName: "Hello", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", timeStart: "12:10 pm", timeEnd: "4:50 pm", price: "23.00")
                }
                .padding(.top, 70)
                .padding(.horizontal, 30)
            }

            HStack {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 40, height: 30)
                
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .padding(.horizontal, 30)
            .padding(.bottom)
            .background(.background)

        }
    }
}

struct Square: View {
    var iconName: String
    var text: String
    var color: Color
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 50)
                .foregroundStyle(.white)
            Text(text)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .lineLimit(1)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 120)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct Announce: View {
    var profileImage: String?
    var userName: String
    var description: String
    var timeStart: String
    var timeEnd: String
    var price: String
    
    var body: some View {
        HStack {
            Image(systemName: profileImage ?? "person.fill.questionmark")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .padding(.leading)
            VStack(alignment: .leading) {
                Text(userName)
                    .fontWeight(.bold)
                    .font(.title2)
                    .lineLimit(1)
                Text(description)
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
                HStack {
                    Image(systemName: "clock")
                        .foregroundStyle(.cyan)
                    Text("\(timeStart) - \(timeEnd)")
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }
                .padding(.vertical, 5)
                HStack {
                    Text("\(price)$")
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                    Spacer()
                    Text("Appointment")
                        .lineLimit(1)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(.cyan)
                        .clipShape(.capsule)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(.fill)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ContentView()
}
