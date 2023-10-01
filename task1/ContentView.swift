//
//  ContentView.swift
//  project1
//
//  Created by Dmitrii Nazarov on 01.10.2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
            VStack{
                TabView {
                    ScrollView {
                        VStack {
                            ForEach(0..<100) { index in
                                Text("\(index)")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            }
                        }
                    }
                    .tabItem {
                        Image(systemName: "star")
                        Text("task1")
                    }
                    
                    .safeAreaInset(edge: .bottom, alignment: .center,spacing: 0){
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: .infinity, height: 50)
                            .opacity(0.5)
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
