//
//  ImageCacheManager.swift
//  TableviewProject
//
//  Created by Can Yoldas on 12.10.2021.
//

import UIKit

class ImageCacheManager {
    
    private static let imageCache = NSCache<NSString, UIImage>()
    
    class func setImagesToCache(object: UIImage, key: String) {
        imageCache.setObject(object, forKey: NSString(string: key))
    }
    
    class func returnImagesFromCache(key: String) -> UIImage? {
        return imageCache.object(forKey: NSString(string: key))
    }
    
}
