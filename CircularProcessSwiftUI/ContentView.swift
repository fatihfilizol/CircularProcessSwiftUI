//
//  ContentView.swift
//  CircularProcessSwiftUI
//
//  Created by Fatih Filizol on 14.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePersentage : Double = 0
    @State var secondCirclePersentage : Double = 0
    @State var thirdCirclePersentage : Double = 0
    
    
    var body: some View {
        ZStack{
            Circular(lineWidth: 40, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclePersentage)
                .frame(width: 350,height: 350)
                .onTapGesture {
                    if self.firstCirclePersentage == 0 {
                        self.firstCirclePersentage = 50
                    }else{
                        self.firstCirclePersentage = 0
                    }
                }
            //**********************
            Circular(lineWidth: 40, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentage: secondCirclePersentage)
                .frame(width: 250,height: 250)
                .onTapGesture {
                    if self.secondCirclePersentage == 0 {
                        self.secondCirclePersentage = 75
                    }else{
                        self.secondCirclePersentage = 0
                    }
                }
            //***********************
            Circular(lineWidth: 40, backgroundColor: Color.indigo.opacity(0.2), foregroundColor: Color.indigo, percentage: thirdCirclePersentage)
                .frame(width: 150,height: 150)
                .onTapGesture {
                    if self.thirdCirclePersentage == 0 {
                        self.thirdCirclePersentage = 100
                    }else{
                        self.thirdCirclePersentage = 0
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
