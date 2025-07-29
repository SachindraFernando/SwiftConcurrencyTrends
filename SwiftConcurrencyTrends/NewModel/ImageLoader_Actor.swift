//
//  ImageLoader_Actor.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import UIKit

actor ImageLoader {
    func loadImage(named name: String) -> UIImage? {
        return UIImage(named: name) // Loads from Assets.xcassets
    }
}

func loadImageUsingActor(imageView: UIImageView) async {
    let loader = ImageLoader()
    let image = await loader.loadImage(named: "myImage")
    imageView.image = image
}

