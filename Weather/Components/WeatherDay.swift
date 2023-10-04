//
//  WeatherDay.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import SwiftUI

struct WeatherDay: View {
    
    var weather: ResponseBody.WeatherItem
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 20) {
                Text(Date(timeIntervalSince1970: weather.dt), format: .dateTime.day().month().year().hour())
                    .bold()
                    .padding(.bottom)
                
                HStack {
                    WeatherRow(logo: "thermometer", name: "Min temp", value:
                                (weather.main.tempMin
                                .roundDouble() + "°"))
                    Spacer()
                    WeatherRow(logo: "thermometer", name: "Max temp", value:
                                (weather.main.tempMax
                                .roundDouble() + "°"))
                }
                HStack {
                    WeatherRow(logo: "wind", name: "Wind speed", value:
                                (weather.wind.speed
                                .roundDouble() + "m/s"))
                    Spacer()
                    WeatherRow(logo: "humidity", name: "Humidity", value:
                                (weather.main.humidity
                                .roundDouble() + "%"))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .padding(.bottom, 20)
            .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .background(.white)
            .cornerRadius(20, corners: [.allCorners])
        }
    }
}
