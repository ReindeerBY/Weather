//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import Foundation

@MainActor
class WeatherViewModel: ObservableObject {
    
    @Published var result: AsyncResult<ResponseBody> = .empty
    
    private let manager = WeatherManager()
    
    func loadWeather(city: String) async {
        do {
            self.result = .inProgress
            self.result = .success(try await manager.getCurrentWeather(city: city))
        } catch {
            self.result = .failure(error)
        }
    }
}
