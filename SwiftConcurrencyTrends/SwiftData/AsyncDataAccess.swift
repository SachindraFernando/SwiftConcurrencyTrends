//
//  AsyncDataAccess.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import Foundation

actor DataStore {
    private var store: [String: String] = ["id": "value"]

    func fetchValue(for key: String) -> String? {
        return store[key]
    }
}

func fetchFromStore() async {
    let dataStore = DataStore()
    let result = await dataStore.fetchValue(for: "id")
    print("Fetched: \(result ?? "nil")")
}
