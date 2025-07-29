//
//  CustomExecutorExample.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import Foundation

// MARK: - Custom Serial Executor (Advanced Use Only)
final class BackgroundExecutor: SerialExecutor {
    func enqueue(_ job: UnownedJob) {
        DispatchQueue.global(qos: .background).async {
            job.runSynchronously(on: self.asUnownedSerialExecutor())
        }
    }

    func asUnownedSerialExecutor() -> UnownedSerialExecutor {
        UnownedSerialExecutor(ordinary: self)
    }
}

// MARK: - Custom Global Actor Using BackgroundExecutor

actor BackgroundWorker {
    func log(_ message: String) {
        print("🔧 BackgroundWorker running: \(message)")
    }
}

@globalActor
struct BackgroundActor: GlobalActor {
    static let shared = BackgroundWorker()
}
