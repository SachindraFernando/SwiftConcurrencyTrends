//
//  ImageLoader_AsyncAwait.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import UIKit

func loadImageFromDisk() async -> UIImage? {
    // Simulate async image loading
    return UIImage(contentsOfFile: "path/to/image.png")
}

func loadImage_Async(imageView: UIImageView) async {
    let image = await loadImageFromDisk()
    imageView.image = image
}
