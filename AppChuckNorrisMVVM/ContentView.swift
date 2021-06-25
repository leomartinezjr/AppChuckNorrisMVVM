//
//  ContentView.swift
//  AppChuckNorrisMVVM
//
//  Created by Leonardo Paez on 12/05/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ChuckViewModel
    
    
    var body: some View {
        
        VStack{
        Text(viewModel.value)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            
            Button(action: viewModel.refresh){
                Image(systemName: "arrow.clockwise")
            }
            
            
        }.onAppear(perform: viewModel.refresh)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ChuckViewModel(chuckservice: ChuckService()))
    }
}
