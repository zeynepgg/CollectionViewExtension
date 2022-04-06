//
//  File.swift
//  
//
//  Created by Zeynep Gizem Gürsoy on 4.04.2022.
//

import Foundation
import UIKit

extension UICollectionView {
   public func register(cellType: UICollectionViewCell.Type) {
        register(cellType.nib, forCellWithReuseIdentifier: cellType.identifier)
    }
    
    public func dequeCell<T: UICollectionViewCell>(cellType: T.Type, indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellType.identifier, for: indexPath) as? T else {
            fatalError("Hata meydana geldi")
        }
        return cell
    }
}
