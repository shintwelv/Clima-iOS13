//
//  WeatherModel.swift
//  Clima
//
//  Created by ShinIl Heo on 2022/09/13.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch self.conditionId {
        case ..<300:
            return "cloud.bolt"
        case ..<500:
            return "cloud.drizzle"
        case ..<511:
            return "cloud.rain"
        case ..<520:
            return "cloud.snow"
        case ..<600:
            return "cloud.heavyrain"
        case ..<700:
            return "cloud.snow"
        case ..<800:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        case 802:
            return "cloud"
        case 803:
            return "smoke"
        case 804:
            return "smoke"
        default:
            return "cloud"
        }
    }
}
