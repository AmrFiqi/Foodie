//
//  OnboardingCollectionViewCell.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 22/07/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variables
    
    static let identifier = "OnboardingCell"
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    
    
    // MARK: - Calls Methods
    
    func setup(_ slide: OnboardingModel) {
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
