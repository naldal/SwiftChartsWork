//
//  LineSunshine.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI
import Charts

struct LineSunshineChart: View {
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
