//
//  ContentView.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import SwiftUI

struct ContentView: View {
    @State var image: UIImage?

    var body: some View {
        VStack {
            if let img = image {
                Image(uiImage: img)
                    .resizable()
                    .scaledToFit()
            } else {
                ProgressView("Loading...")
            }
        }
        .task {
            image = await loadImageFromDisk()
        }
    }
}
#Preview {
    ContentView()
}
