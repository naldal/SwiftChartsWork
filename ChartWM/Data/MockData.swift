//
//  MockData.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/14.
//

import SwiftUI

func date(year: Int, month: Int, day: Int = 1) -> Date {
  Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}

struct MockData {
  
  static let last30Days = [
    (day: date(year: 2022, month: 5, day: 8), sales: 168),
    (day: date(year: 2022, month: 5, day: 9), sales: 117),
    (day: date(year: 2022, month: 5, day: 10), sales: 106),
    (day: date(year: 2022, month: 5, day: 11), sales: 119),
    (day: date(year: 2022, month: 5, day: 12), sales: 109),
    (day: date(year: 2022, month: 5, day: 13), sales: 104),
    (day: date(year: 2022, month: 5, day: 14), sales: 196),
    (day: date(year: 2022, month: 5, day: 15), sales: 172),
    (day: date(year: 2022, month: 5, day: 16), sales: 122),
    (day: date(year: 2022, month: 5, day: 17), sales: 115),
    (day: date(year: 2022, month: 5, day: 18), sales: 138),
    (day: date(year: 2022, month: 5, day: 19), sales: 110),
    (day: date(year: 2022, month: 5, day: 20), sales: 106),
    (day: date(year: 2022, month: 5, day: 21), sales: 187),
    (day: date(year: 2022, month: 5, day: 22), sales: 187),
    (day: date(year: 2022, month: 5, day: 23), sales: 119),
    (day: date(year: 2022, month: 5, day: 24), sales: 160),
    (day: date(year: 2022, month: 5, day: 25), sales: 144),
    (day: date(year: 2022, month: 5, day: 26), sales: 152),
    (day: date(year: 2022, month: 5, day: 27), sales: 148),
    (day: date(year: 2022, month: 5, day: 28), sales: 240),
    (day: date(year: 2022, month: 5, day: 29), sales: 242),
    (day: date(year: 2022, month: 5, day: 30), sales: 173),
    (day: date(year: 2022, month: 5, day: 31), sales: 143),
    (day: date(year: 2022, month: 6, day: 1), sales: 137),
    (day: date(year: 2022, month: 6, day: 2), sales: 123),
    (day: date(year: 2022, month: 6, day: 3), sales: 146),
    (day: date(year: 2022, month: 6, day: 4), sales: 214),
    (day: date(year: 2022, month: 6, day: 5), sales: 250),
    (day: date(year: 2022, month: 6, day: 6), sales: 146)
  ]
  
  static var last30DaysTotal: Int {
    last30Days.map { $0.sales }.reduce(0, +)
  }
  
  static var last30DaysAverage: Double {
    Double(last30DaysTotal / last30Days.count)
  }
  
  static let last12Months = [
    (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
    (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
    (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
    (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
    (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
    (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
    (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
    (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
    (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
    (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
    (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
    (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250),
    (month: date(year: 2021, month: 7), sales: 3952, dailyAverage: 127, dailyMin: 95, dailyMax: 194),
    (month: date(year: 2021, month: 8), sales: 4044, dailyAverage: 130, dailyMin: 96, dailyMax: 189),
    (month: date(year: 2021, month: 9), sales: 3930, dailyAverage: 131, dailyMin: 101, dailyMax: 184),
    (month: date(year: 2021, month: 10), sales: 4217, dailyAverage: 136, dailyMin: 96, dailyMax: 193),
    (month: date(year: 2021, month: 11), sales: 4006, dailyAverage: 134, dailyMin: 104, dailyMax: 202),
    (month: date(year: 2021, month: 12), sales: 3994, dailyAverage: 129, dailyMin: 96, dailyMax: 190),
    (month: date(year: 2022, month: 1), sales: 4202, dailyAverage: 136, dailyMin: 96, dailyMax: 203),
    (month: date(year: 2022, month: 2), sales: 3749, dailyAverage: 134, dailyMin: 98, dailyMax: 200),
    (month: date(year: 2022, month: 3), sales: 4329, dailyAverage: 140, dailyMin: 104, dailyMax: 218),
    (month: date(year: 2022, month: 4), sales: 4084, dailyAverage: 136, dailyMin: 93, dailyMax: 221),
    (month: date(year: 2022, month: 5), sales: 4559, dailyAverage: 147, dailyMin: 104, dailyMax: 242),
    (month: date(year: 2022, month: 6), sales: 1023, dailyAverage: 170, dailyMin: 120, dailyMax: 250)
  ]
  
}


// MARK: - CategorizedBar example

struct ProfitByCategory: Identifiable {
  let id: UUID = UUID()
  let department: String
  let profit: Double
  let productCategory: String
  
  static let profitedData = [
    ProfitByCategory(department: "Production", profit: 4000, productCategory: "Gizmos"),
    ProfitByCategory(department: "Production", profit: 5000, productCategory: "Gadgets"),
    ProfitByCategory(department: "Production", profit: 6000, productCategory: "Widgets"),
    ProfitByCategory(department: "Marketing", profit: 2000, productCategory: "Gizmos"),
    ProfitByCategory(department: "Marketing", profit: 1000, productCategory: "Gadgets"),
    ProfitByCategory(department: "Marketing", profit: 5000, productCategory: "Widgets"),
    ProfitByCategory(department: "Finance", profit: 2000, productCategory: "Gizmos"),
    ProfitByCategory(department: "Finance", profit: 3000, productCategory: "Gadgets"),
    ProfitByCategory(department: "Finance", profit: 5000, productCategory: "Widgets")
  ]
}


// MARK: - LineSunshineChart example

struct MonthlyHoursOfSunshine: Identifiable {
  let id = UUID()
  var date: Date
  var hoursOfSunshine: Double
  
  init(month: Int, hoursOfSunshine: Double) {
    let calendar = Calendar.autoupdatingCurrent
    self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
    self.hoursOfSunshine = hoursOfSunshine
  }
  
  static let data: [MonthlyHoursOfSunshine] = (1...12).map({ MonthlyHoursOfSunshine(month: $0, hoursOfSunshine: Double(Int.random(in: (10...100))))})
}



struct LocationData {
  
  struct Series: Identifiable {
    let city: String
    let sales: [(weekday: Date, sales: Int)]
    var id: String { city }
  }
  
  static let last30Days: [Series] = [
    .init(city: "Cupertino", sales: [
      (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
      (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
      (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
      (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
      (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
      (weekday: date(year: 2022, month: 5, day: 7), sales: 125),
      (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
      
    ]),
    .init(city: "San Francisco", sales: [
      (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
      (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
      (weekday: date(year: 2022, month: 5, day: 4), sales: 52),
      (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
      (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
      (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
      (weekday: date(year: 2022, month: 5, day: 8), sales: 137)
    ])
  ]
  
  static let last30DaysBest = (
    city: "San Francisco",
    weekday: date(year: 2022, month: 5, day: 8),
    sales: 137
  )
  
  /// The best weekday and location for the last 12 months.
  static let last12MonthsBest = (
    city: "San Francisco",
    weekday: date(year: 2022, month: 5, day: 8),
    sales: 113
  )
  
  /// Sales by location and weekday for the last 12 months.
  static let last12Months: [Series] = [
    .init(city: "Cupertino", sales: [
      (weekday: date(year: 2022, month: 5, day: 2), sales: 64),
      (weekday: date(year: 2022, month: 5, day: 3), sales: 60),
      (weekday: date(year: 2022, month: 5, day: 4), sales: 47),
      (weekday: date(year: 2022, month: 5, day: 5), sales: 55),
      (weekday: date(year: 2022, month: 5, day: 6), sales: 55),
      (weekday: date(year: 2022, month: 5, day: 7), sales: 105),
      (weekday: date(year: 2022, month: 5, day: 8), sales: 67)
    ]),
    .init(city: "San Francisco", sales: [
      (weekday: date(year: 2022, month: 5, day: 2), sales: 57),
      (weekday: date(year: 2022, month: 5, day: 3), sales: 56),
      (weekday: date(year: 2022, month: 5, day: 4), sales: 66),
      (weekday: date(year: 2022, month: 5, day: 5), sales: 61),
      (weekday: date(year: 2022, month: 5, day: 6), sales: 60),
      (weekday: date(year: 2022, month: 5, day: 7), sales: 77),
      (weekday: date(year: 2022, month: 5, day: 8), sales: 113)
    ])
  ]
}
