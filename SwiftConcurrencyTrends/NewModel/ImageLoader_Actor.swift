//
//  ImageLoader_Actor.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import UIKit

actor ImageLoader {
    func loadImage(path: String) -> UIImage? {
        return UIImage(contentsOfFile: path)
    }
}

func loadImageUsingActor(imageView: UIImageView) async {
    let loader = ImageLoader()
    let image = await loader.loadImage(path: "path/to/image.png")
    imageView.image = image
}
