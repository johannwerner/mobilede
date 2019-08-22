//
//  ImageGalleryCollectionViewCell.swift
//  mobile
//
//  Created by Johann Werner on 21.08.19.
//  Copyright © 2019 Johann Werner. All rights reserved.
//

import UIKit
import PureLayout

class ImageGalleryCollectionViewCell: UICollectionViewCell {
    // MARK: - Properties
    private let imageView = UIImageView()
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

// MARK: - Public
extension ImageGalleryCollectionViewCell {
    func fill(with model: ImageGalleryModel) {
        imageView.setRemoteImage(with: model.bigImageUrl)
    }
}

// MARK: - Private
private extension ImageGalleryCollectionViewCell {
    func initUI() {
        contentView.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
        imageView.contentMode = .scaleAspectFill
    }
}