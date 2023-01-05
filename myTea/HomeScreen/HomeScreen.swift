//
//  HomeScreen.swift
//  myTea
//
//  Created by Ewide Dev. 2 on 04/01/23.
//

import SwiftUI

struct HomeScreen: View {
    let itemPerRow: CGFloat = 2
    let horizontalSpacing: CGFloat = 16
    let height: CGFloat = 300
    
    @State private var showScroll: Bool = false
    
    // MARK: - Propertiers
        @State private var email = ""
        @State private var password = ""
        
        // MARK: - View
        var body: some View {
            NavigationView {
                VStack() {
                    VStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.buttonColor)
                                .frame(width: 60, height: 5)
                                .position(x: 60, y: 80)
                            
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.buttonColor)
                                .frame(width: 40, height: 5)
                                .position(x: 55, y: 60)
                        }
                        
                        Text("super leaf powder")
                            .font(.system(size: 45))
                            .foregroundColor(Color.artichokeGreen)
                            .padding([.top, .bottom], 10)
                            .position(x:80, y: 100)
                            .font(.system(size: 60))
                            .frame(width: 280, height: 150)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Image("green-tea")
                            .resizable()
                            .frame(width: 280, height: 250)
                            .position(x: 330, y: 0)
                            .padding(.bottom, 50)
                        
                        HStack {
                            Text("Order your own raw superfood packed with nutrients")
                                .font(.system(size: 18))
                                .foregroundColor(Color.descColor)
                                .position(x:105, y: 30)
                                .frame(width: 270, height: 80)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                    }
                    scrollView
                    
                }
            }.navigationBarHidden(true)
        }
    
            var scrollView: some View {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.circleColor)
                                .frame(width: 160, height: 250)
                                .position(x: 60, y: 150)
                            
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
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.circleColor)
                                .frame(width: 160, height: 250)
                                .position(x: 60, y: 150)
                            
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
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.circleColor)
                                .frame(width: 160, height: 250)
                                .position(x: 60, y: 150)
                            
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
                    }
                    .padding([.leading, .trailing], 37.5)
                }
                .frame(height: 350)
                .padding(.top, 10)
            
        }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 14")
    }
}
