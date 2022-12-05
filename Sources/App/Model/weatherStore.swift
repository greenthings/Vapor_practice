//
//  weatherStore.swift
//  Weather_Json
//
//  Created by greenthings on 2022/11/23.
//

import Foundation

class WeatherStore: ObservableObject{

    

    @Published var weather: Weather = Weather(latitude: 0.0, longitude: 0.0, generationtimeMS: 0.0, utcOffsetSeconds: 0, timezone: "", timezoneAbbreviation: "", elevation: 0,hourlyUnits:HourlyUnits(time: "", temperature2M: ""),hourly:Hourly(time: [""], temperature2M: [0.0]))
    
    init() {
        self.weather = weather
    }

}


