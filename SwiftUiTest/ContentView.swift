//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Craig Davey on 10/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var backgroundFillChanger: Color = .green
    
    var body: some View {
        ZStack{
            ViewBackground(backgroundFill: backgroundFillChanger)
            VStack{
                Text("SwiftUI Background\nGradient Picker")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(10)
                ScrollView{
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .purple,
                                 buttonText: "Purple")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .blue,
                                 buttonText: "Blue")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .orange,
                                 buttonText: "Orange")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .yellow,
                                 buttonText: "Yellow")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .green,
                                 buttonText: "Green")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .red,
                                 buttonText: "Red")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .brown,
                                 buttonText: "Brown")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .cyan,
                                 buttonText: "Cyan")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .indigo,
                                 buttonText: "Indigo")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .pink,
                                 buttonText: "Pink")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .teal,
                                 buttonText: "Teal")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .mint,
                                 buttonText: "Mint")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .gray,
                                 buttonText: "Gray")
                    CustomButton(backgroundFillChanger: $backgroundFillChanger,
                                 backgroundColor: .black,
                                 buttonText: "Black")
                }
                .frame(maxWidth: .infinity)
                Link(destination: URL(string: "https://github.com/craig-davey96")! , label: {
                    Text("Made By Craig Davey")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(15)
                })
                
            }.frame(maxWidth: .infinity)
        }
    }
}


#Preview {
    ContentView()
}

struct CustomButton: View {
    
    @Binding var backgroundFillChanger: Color
    var backgroundColor: Color
    var buttonText: String
    
    var body: some View {
        Button{
            backgroundFillChanger = Color(backgroundColor)
        } label: {
            Text(buttonText)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(backgroundColor)
                .frame(width: 300 , height: 50)
                .background(.white)
                .cornerRadius(10)
        }
    }
}
