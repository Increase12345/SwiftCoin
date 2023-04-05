//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Nick Pavlov on 4/4/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
                
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
