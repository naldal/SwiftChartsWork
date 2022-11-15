//
//  ContentView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/14.
//

import Charts
import SwiftUI

struct MaxMinChartOverview: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("BarChart With Min to Max")
        .font(.callout)
        .foregroundStyle(.secondary)
      
      Chart {
        ForEach(MockData.last12Months, id: \.month) {
          RectangleMark (
            x: .value("Month", $0.month, unit: .month),
            yStart: .value("Min Salse", 0),
            yEnd: .value("Max Sales", $0.dailyMax),
            width: .automatic
          )
          .opacity(0.3)
        }
      }
      .frame(height: 95)
      .chartXAxis(.hidden)
      .chartYAxis(.hidden)
    }
  }
}

struct MaxMinChart: View {
  
  var body: some View {
    Chart {
      ForEach(MockData.last12Months, id: \.month) {
        RectangleMark (
          x: .value("Month", $0.month, unit: .month),
          yStart: .value("Min Salse", $0.dailyMin),
          yEnd: .value("Max Sales", $0.dailyMax),
          width: .automatic
        )
        .opacity(0.3)
      }
    }
  }
  
}

struct MaxMin: View {
  
  var body: some View {
    List {
      VStack(alignment: .leading) {
        Text("Show Max and Min Values")
          .font(.callout)
          .foregroundColor(.secondary)
        
        MaxMinChart()
          .frame(height: 300)

      }
    }
  }
}


struct MaxMinAverage_Previews: PreviewProvider {
  static var previews: some View {
    MaxMinChart()
      .padding()
  }
}

