//
//  ContentView.swift
//  myTea
//
//  Created by Ewide Dev. 2 on 04/01/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Propertiers
        @State private var email = ""
        @State private var password = ""
        @State var isLinkActive = false
        // MARK: - View
        var body: some View {
            NavigationView {
            VStack() {
                VStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.buttonColor)
                        .frame(width: 60, height: 5)
                        .position(x: 60, y: 100)
                    
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.buttonColor)
                        .frame(width: 40, height: 5)
                        .position(x: 50, y: 105)
                    
                    Text("Good morning, MyTea")
                        .font(.system(size: 40))
                        .foregroundColor(Color.artichokeGreen)
                        .padding([.top, .bottom], 10)
                        .position(x:100, y: 200)
                        .font(.system(size: 60))
                        .frame(width: 280, height: 150)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
                Image("iosapptemplate")
                    .resizable()
                    .frame(width: 350, height: 450)
                    .position(x: 390, y: 0)
                    .padding(.bottom, 50)
                
                
                HStack(spacing: 5) {
                    VStack {
                        Circle()
                            .strokeBorder(Color.blue,lineWidth: 0)
                            .background(Circle().foregroundColor(Color.circleColor))
                            .frame(width: 80, height: 80)
                            .position(x:30, y: 70)
                        
                        Image("leaf")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .position(x: 60, y: 0)
                            .padding(.bottom, 50)
                            .foregroundColor(Color.artichokeGreen)
                        
                        Text("Natural")
                            .font(.subheadline).foregroundColor(Color.descColor)
                            .position(x:30, y: 20)
                    }
                    
                    VStack {
                        Circle()
                            .strokeBorder(Color.blue,lineWidth: 0)
                            .background(Circle().foregroundColor(Color.circleColor))
                            .frame(width: 80, height: 80)
                            .position(x:30, y: 70)
                        
                        Image("heartbeat")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .position(x: 60, y: 0)
                            .padding(.bottom, 50)
                            .foregroundColor(Color.artichokeGreen)
                        
                        Text("Healthy")
                            .font(.subheadline).foregroundColor(Color.descColor)
                            .position(x:30, y: 20)
                    }
                    
                    VStack {
                        Circle()
                            .strokeBorder(Color.blue,lineWidth: 0)
                            .background(Circle().foregroundColor(Color.circleColor))
                            .frame(width: 80, height: 80)
                            .position(x:30, y: 70)
                        
                        Image("apple")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .position(x: 60, y: 0)
                            .padding(.bottom, 50)
                            .foregroundColor(Color.artichokeGreen)
                        
                        Text("Nutrition").foregroundColor(Color.descColor)
                            .font(.subheadline)
                            .position(x:30, y: 20)
                    }
                }.padding([.leading, .trailing], 37.5)
                
                
                VStack {
                    HStack {
                        Spacer(minLength: 20)
                            HStack (alignment: .center, spacing: 10) {
                                Image("mail")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color.descColor)
                                    .frame(minWidth: 0, maxWidth: 30)
                                    .frame(minHeight: 0, maxHeight: 33)
                                TextField ("Email", text: $email)
                            }  // HSTack
                            .padding([.top,.bottom], 2)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                            Spacer(minLength: 20)
                        }
                    Divider()
                        .padding(.horizontal, 30)
                        .background(Color.circleColor)
                  
                    HStack {
                        Spacer(minLength: 20)
                            HStack (alignment: .center, spacing: 10) {
                                Image("key")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .foregroundColor(Color.descColor)
                                    .frame(minWidth: 0, maxWidth: 30)
                                    .frame(minHeight: 0, maxHeight: 33)
                                TextField ("Password", text: $password)
                            }  // HSTack
                            .padding([.top,.bottom], 2)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                            Spacer(minLength: 20)
                        }
                    Divider()
                        .padding(.horizontal, 30)
                        .background(Color.circleColor)
                        Spacer()
                }.padding(.top, 70)
                
                
                        Button(action: { self.isLinkActive = true }) {
                            Text("Login")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300, height: 100)
                                .background(Color.buttonColor)
                                .cornerRadius(50.0)
                                .position(x:290, y: 70)
                        }
                        NavigationLink("", destination:  HomeScreen(), isActive: $isLinkActive)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 14")
            
    }
}
