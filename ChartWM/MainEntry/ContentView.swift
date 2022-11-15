//
//  ContentView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI

struct ContentView: View {
  private enum Destination {
    case one
    case two
    case maxMinChart
    case dailyBar
    case category
    case sunShine
    case empty
  }
  
  @State private var selection: Destination?
  
  var body: some View {
    NavigationSplitView {
      List(selection: $selection) {
        Section {
          NavigationLink(value: Destination.maxMinChart) {
            MaxMinChartOverview()
              .frame(height: 95)
          }
        }
        Section {
          NavigationLink("Daily Bar Chart", value: Destination.dailyBar)
          NavigationLink("Categorized Chart", value: Destination.category)
          NavigationLink("Sun Shine Chart", value: Destination.sunShine)
        }
        
        Section(header: Text("Test Navigation Views")) {
          NavigationLink("test one", value: Destination.one)
          NavigationLink("test two", value: Destination.two)
        }
      }
      .navigationTitle("Charts")
      .listStyle(.insetGrouped)
    } detail: {
      NavigationStack {
        switch selection ?? .empty {
        case .maxMinChart: MaxMin()
        case .dailyBar: DailyBar()
        case .category: CategorizedBarChart()
        case .sunShine: LineSunshineChart()
        case .one: TestOneView()
        case .two: TestTwoView()
        case .empty: Text("Select data to View")
        }
      }
    }
  }
}
