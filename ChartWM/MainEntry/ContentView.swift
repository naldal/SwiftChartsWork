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
    case maxAndMinChart
    case empty
  }
  
  @State private var selection: Destination?
  
  var body: some View {
    NavigationSplitView {
      List(selection: $selection) {
        Section(header: Text("Charts")) {
          NavigationLink("Max and Min Chart", value: Destination.maxAndMinChart)
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
        case .maxAndMinChart: MaxAndMinChart()
        case .one: TestOneView()
        case .two: TestTwoView()
        case .empty: Text("Select data to View")
        }
      }
    }
  }
}
