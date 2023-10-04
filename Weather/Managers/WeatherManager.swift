//
//  WeatherManager.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import Foundation
import CoreLocation
import Foundation

class WeatherManager: ObservableObject {

    private let token = "2b032ab6a8431d29a5948ab38139d145"
    private let urlSession = URLSession.shared
    private let jsonDecoder = JSONDecoder()

    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=\(latitude)&lon=\(longitude)&appid=\(token)&units=metric")!
        let (data, _) = try await urlSession.data(from: url)
        return try jsonDecoder.decode(ResponseBody.self, from: data)
    }
    
    func getCurrentWeather(city: String) async throws -> ResponseBody {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(token)&units=metric".encodeUrl)!
        let (data, _) = try await urlSession.data(from: url)
        return try jsonDecoder.decode(ResponseBody.self, from: data)
    }
}
