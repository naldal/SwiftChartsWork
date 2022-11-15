//
//  LineSunshine.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI
import Charts

/// A square symbol for charts.
struct Square: ChartSymbolShape, InsettableShape {
    let inset: CGFloat

    init(inset: CGFloat = 0) {
        self.inset = inset
    }

    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 1
        let minDimension = min(rect.width, rect.height)
        return Path(
            roundedRect: .init(x: rect.midX - minDimension / 2, y: rect.midY - minDimension / 2, width: minDimension, height: minDimension),
            cornerRadius: cornerRadius
        )
    }

    func inset(by amount: CGFloat) -> Square {
        Square(inset: inset + amount)
    }

    var perceptualUnitRect: CGRect {
        let scaleAdjustment: CGFloat = 0.75
        return CGRect(x: 0.5 - scaleAdjustment / 2, y: 0.5 - scaleAdjustment / 2, width: scaleAdjustment, height: scaleAdjustment)
    }
}

struct LineSunshineBasicChart: View {
  var body: some View {
    Chart {
      ForEach(MonthlyHoursOfSunshine.data) { shineData in
        LineMark(
          x: .value("SunShine Date", shineData.date),
          y: .value("SunShine Value", shineData.hoursOfSunshine)
        )
      }
    }
  }
}

struct LineSunshineCityChart: View {
  
  let data: [LocationData.Series]
  
  var body: some View {
    Chart(data) { series in
        ForEach(series.sales, id: \.weekday) { element in
            LineMark(
                x: .value("Day", element.weekday, unit: .day),
                y: .value("Sales", element.sales)
            )
        }
        .foregroundStyle(by: .value("City", series.city))
        .symbol(by: .value("City", series.city))
        .interpolationMethod(.catmullRom)
    }
    .chartForegroundStyleScale([
        "San Francisco": .purple,
        "Cupertino": .green
    ])
    .chartSymbolScale([
        "San Francisco": Circle().strokeBorder(lineWidth: 2),
        "Cupertino": Square().strokeBorder(lineWidth: 2)
    ])
    .chartXAxis {
        AxisMarks(values: .stride(by: .day)) { _ in
            AxisTick()
            AxisGridLine()
            AxisValueLabel(format: .dateTime.weekday(.abbreviated), centered: true)
        }
    }
    .chartLegend(position: .top)
  }
}


struct LineSunshineChart: View {
  
  let data: [LocationData.Series]
  
  var body: some View {
    VStack {
      LineSunshineBasicChart()
      LineSunshineCityChart(data: data)
    }
  }
}
