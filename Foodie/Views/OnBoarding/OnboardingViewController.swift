//
//  OnboardingViewController.swift
//  Foodie
//
//  Created by Amr El-Fiqi on 22/07/2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Variables
    
    var slides: [OnboardingModel] = []
    
    // MARK: - Class Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    
    @IBAction func nextButtonClicked(_ sender: Any) {
    }
    
}
