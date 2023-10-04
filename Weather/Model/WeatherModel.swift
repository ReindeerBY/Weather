//
//  WeatherModel.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import Foundation

struct ResponseBody: Decodable {
    
    var list: [WeatherItem]
    
    struct WeatherItem: Decodable, Identifiable {
        var id: Double {
            dt
        }
        
        var dt: Double
        var dt_txt: String
        var weather: [WeatherResponse]
        var main: MainResponse
        var wind: WindResponse
    }

    struct WeatherResponse: Decodable {
        var id: Double
        var main: String
        var description: String
        var icon: String
    }

    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindResponse: Decodable {
        var speed: Double
        var deg: Double
    }
}

extension ResponseBody.MainResponse {
    var feelsLike: Double { return feels_like }
    var tempMin: Double { return temp_min }
    var tempMax: Double { return temp_max }
}
