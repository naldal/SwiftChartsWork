//
//  ContentView.swift
//  ChartWM
//
//  Created by WM-ID002346 on 2022/11/15.
//

import SwiftUI

struct ContentView: View {
  private enum Destination {
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
              
          }
        }
        Section {
          NavigationLink("Daily Bar Chart", value: Destination.dailyBar)
          NavigationLink("Categorized Chart", value: Destination.category)
        }
        
        Section(header: Text("Sun Shine Chart")) {
          NavigationLink(value: Destination.sunShine) {
            LineSunshineCityChart(data: LocationData.last12Months)
              .frame(height: 200)
          }
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
        case .sunShine: LineSunshineChart(data: LocationData.last12Months)
        case .empty: Text("Select data to View")
        }
      }
    }
  }
}
