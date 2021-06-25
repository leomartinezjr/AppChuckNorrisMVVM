//
//  ChuckViewModel.swift
//  AppChuckNorrisMVVM
//
//  Created by Leonardo Paez on 12/05/21.
//

import Foundation


class ChuckViewModel: ObservableObject {
    
    @Published var id: String = "0000000000"
    @Published var icon_url: String = "oxoxoxoxoxoxoxox"
    @Published var value: String = "Chuck Norris é tao forte que ela desvira a esquina"
    
    public let chuckservice: ChuckService
    
    init(chuckservice: ChuckService) {
        self.chuckservice = chuckservice
    }
    
    func refresh (){
        chuckservice.loadJokeData{ jokes in
            DispatchQueue.main.async {
                self.id = jokes.id
                self.icon_url = jokes.icon_url
                self.value = jokes.value
            }
        
        }
    }
}
