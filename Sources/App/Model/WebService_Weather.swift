
import Foundation
//
//  WebService.swift
//  Car_JSON_Parsing
//
//  Created by greenthings on 2022/11/22.
//

import Foundation


class WebService: ObservableObject{
    

    func fetchData(from url: String) async throws -> Weather{
        


        let url = URL(string: url)

        let (data, _) = try await URLSession.shared.data(from: url!)
 
        let weather = try JSONDecoder().decode(Weather.self, from: data)
        
        return weather
    }
}
