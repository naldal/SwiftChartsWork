//
//  ContentView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/14.
//

import Charts
import SwiftUI

struct MaxAndMinChart: View {

  var body: some View {
    List{
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
      .frame(height: 400)
    }
  }
}
