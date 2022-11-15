//
//  DailyBarView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI
import Charts

struct DailyBarChart: View {
  let showAverageLine: Bool
  
  var body: some View {
    Chart {
      ForEach(MockData.last30Days, id: \.day) {
        BarMark(
          x: .value("Day", $0.day, unit: .day),
          y: .value("Sales", $0.sales)
        )
      }
      .foregroundStyle(showAverageLine ? .gray.opacity(0.3) : .blue)
      
      if showAverageLine {
          RuleMark(
              y: .value("Average", MockData.last30DaysAverage)
          )
          .lineStyle(StrokeStyle(lineWidth: 3))
          .annotation(position: .top, alignment: .leading) {
              Text("Average: \(MockData.last30DaysAverage, format: .number)")
                  .font(.body.bold())
                  .foregroundStyle(.blue)
          }
      }
    }
  }
}


struct DailyBar: View {
  
  @State private var showAverageLine: Bool = false
  
  var body: some View {
    
    List {
      DailyBarChart(showAverageLine: showAverageLine)
        .frame(height: 500)
      Section ("Average") {
        Toggle("Show Daily Average", isOn: $showAverageLine)
      }
    }
    
  }
}


