//
//  CategorizedBarView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI
import Charts

struct CategorizedChartVertical: View {
  let categorizingData = ProfitByCategory.profitedData
  
  var body: some View {
    Chart {
      ForEach(categorizingData) { shape in
        BarMark(
          x: .value("Shape Type", shape.department),
          y: .value("Total Count", shape.profit)
        )
        .foregroundStyle(by: .value("Shape Color", shape.productCategory))
      }
    }
    .chartForegroundStyleScale([
      "Gizmos": .green,
      "Gadgets": .pink,
      "Widgets": .yellow
    ])
  }
}

struct CategorizedHChartMockup: View {
  let categorizingData = ProfitByCategory.profitedData
  let stackingType: MarkStackingMethod
  
  var body: some View {
    Chart {
      ForEach(categorizingData) { shape in
        BarMark(x: .value("one Dimentional", shape.profit), width: .automatic, stacking: self.stackingType)
          .foregroundStyle(by: .value("Shape Color", shape.productCategory))
      }
    }
    .frame(height: 50)
    .chartForegroundStyleScale([
      "Gizmos": .green,
      "Gadgets": .pink,
      "Widgets": .yellow
    ])
  }
}

struct CategorizedChartHorizontal: View {
  let categorizingData = ProfitByCategory.profitedData
  
  var body: some View {
    List {
      Section("Stacking - center") {
        CategorizedHChartMockup(stackingType: .center)
      }
      Section("Staking - standard") {
        CategorizedHChartMockup(stackingType: .standard)
      }
      Section("Staking - normalized") {
        CategorizedHChartMockup(stackingType: .normalized)
      }
      Section("Staking - unstacked") {
        CategorizedHChartMockup(stackingType: .unstacked)
      }
    }
  }
}

struct CategorizedBarChart: View {
  var body: some View {
    VStack {
      Section(content: {
        CategorizedChartVertical()
          .frame(height: 120)
          .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10))
        CategorizedChartHorizontal()
          .padding(EdgeInsets(top: 10, leading: 10, bottom: 30, trailing: 10))
      }, header: {
        Text("Categorized Charts")
          .font(.callout)
      })
    }
  }
}


struct CategorizedBarPreview: PreviewProvider {
  static var previews: some View {
    CategorizedBarChart()
      .padding()
  }
}
