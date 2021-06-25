//
//  ChuckNorris.swift
//  AppChuckNorrisMVVM
//
//  Created by Leonardo Paez on 12/05/21.
//

import Foundation


public struct ChuckNorris{
    
    let id: String
    let icon_url: String
    let value: String
    
    init (response: APIResponse){
        
        id = response.id
        icon_url = response.icon_url
        value = response.value
    }

}
