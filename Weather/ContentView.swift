//
//  ContentView.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

//import SwiftUI
//
//struct ContentView: View {
//    
//    @StateObject var locationManager = LocationManager()
//    @StateObject var weatherManager = WeatherManager()
//        
//    var body: some View {
//        VStack {
//            if let location = locationManager.location {
//                if let weather = weatherManager {
//                    WeatherView(weather: weather)
//                } else {
//                    LoadingView()
//                        .task {
//                            do {
//                             try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
//                            } catch {
//                                print("Error getting weather: \(error)")
//                            }
//                        }
//                }
//            } else {
//                if locationManager.isLoading {
//                    LoadingView()
//                } else {
//                    LocationView()
//                        .environmentObject(locationManager)
//                }
//            }
//        } // VStack
//        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
//        .preferredColorScheme(.dark)
//    }
//}
//
//#Preview {
//    ContentView()
//}
