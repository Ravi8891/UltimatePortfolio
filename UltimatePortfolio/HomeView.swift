//
//  HomeView.swift
//  UltimatePortfolio
//
//  Created by Ravi on 19/11/20.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var datacontroller: DataController
    var body: some View {
        NavigationView {
            VStack {
                Button("Add Data") {
                    datacontroller.deleteAll()
                    try? datacontroller.createSampleData()
                }
            }.navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
