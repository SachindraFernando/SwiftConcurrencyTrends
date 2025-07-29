//
//  ImageLoader_AsyncAwait.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import UIKit

func loadImageFromAssets() async -> UIImage? {
    let loader = ImageLoader()
    return await loader.loadImage(named: "myImage") // Ensure this exists in Assets.xcassets
}

func loadImage_Async(imageView: UIImageView) async {
    let image = await loadImageFromAssets()
    imageView.image = image
}
