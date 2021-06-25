//
//  ChuckServices.swift
//  AppChuckNorrisMVVM
//
//  Created by Leonardo Paez on 12/05/21.
//

import Foundation


public final class ChuckService: NSObject {
    
    private var conpletetionHandle: ((ChuckNorris) -> Void)?
    
    public func loadJokeData (_ completationHandle: @escaping ((ChuckNorris) -> Void)){
        self.conpletetionHandle = completationHandle
        self.makeDataResquest()
    }
    
//    public override init() {
//        super.init()
//        makeDataResquest()
//    }
//    
    private func makeDataResquest() {
       // guard let urlString = "https://api.chucknorris.io/jokes/random" else {return}
        
        guard  let url = URL(string: "https://api.chucknorris.io/jokes/random") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, erro) in
            guard erro == nil, let data = data else {return}
            
            if let response = try? JSONDecoder().decode(APIResponse.self, from: data){
                let chuckNorris = ChuckNorris(response: response)
                self.conpletetionHandle?(chuckNorris)
            }
        }.resume()
    }
}

struct APIResponse: Decodable {
    let id: String
    let icon_url: String
    let value: String
}


