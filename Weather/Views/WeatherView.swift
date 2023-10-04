//
//  WeatherView.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import SwiftUI

struct WeatherView: View {
    
    @State private var searchText = ""
    @StateObject var weatherModel = WeatherViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                switch weatherModel.result {
                case let .success(weather):
                    List(weather.list) { weather in
                        WeatherDay(weather: weather)
                    }
                case let .failure(error):
                    Text("\(error.localizedDescription)")
                case .empty:
                    Text("Введите адрес")
                case .inProgress:
                    LoadingView()
                }
            }
            .searchable(text: $searchText)
            .onSubmit(of: .search, runSearch)
        }
    }
        
    func runSearch() {
        Task {
            await weatherModel.loadWeather(city: searchText)
        }
    }
    
}
