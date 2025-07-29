//
//  ImageLoader_GCD.swift
//  SwiftConcurrencyTrends
//
//  Created by Sachindra Fernando on 2025-07-29.
//

import UIKit

func loadImage_GCD(imageView: UIImageView) {
    DispatchQueue.global().async {
        let image = UIImage(contentsOfFile: "path/to/image.png")
        DispatchQueue.main.async {
            imageView.image = image
        }
    }
}
