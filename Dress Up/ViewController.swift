//
//  ViewController.swift
//  Dress Up
//
//  Created by Hollins, Richie on 3/19/17.
//  Copyright © 2017 Hollins, Richie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var stage: UIView!
    @IBOutlet weak var drawer: UIView!
    @IBOutlet weak var drawerScrollView: UIScrollView!
    
    @IBOutlet weak var greenPuppyHead: UIImageView!
    @IBOutlet weak var hatsImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var bodyImageView: UIImageView!
    
    @IBOutlet weak var hatButton0: UIButton!
    @IBOutlet weak var hatButton1: UIButton!
    @IBOutlet weak var hatButton2: UIButton!
    @IBOutlet weak var hatButton3: UIButton!
    @IBOutlet weak var hatButton4: UIButton!
    @IBOutlet weak var hatButton5: UIButton!
    @IBOutlet weak var hatButton6: UIButton!
    @IBOutlet weak var hatButton7: UIButton!
    
    @IBOutlet weak var faceButton0: UIButton!
    @IBOutlet weak var faceButton1: UIButton!
    @IBOutlet weak var faceButton2: UIButton!
    @IBOutlet weak var faceButton3: UIButton!
    @IBOutlet weak var faceButton4: UIButton!
    
    @IBOutlet weak var bodyButton0: UIButton!
    @IBOutlet weak var bodyButton1: UIButton!
    @IBOutlet weak var bodyButton2: UIButton!
    @IBOutlet weak var bodyButton3: UIButton!
    @IBOutlet weak var bodyButton4: UIButton!
    @IBOutlet weak var bodyButton5: UIButton!
    @IBOutlet weak var bodyButton6: UIButton!
    @IBOutlet weak var bodyButton7: UIButton!
    
    var allDrawerButtons: [UIButton] = []
    var allHatButtons: [UIButton] = []
    var allFaceButtons: [UIButton] = []
    var allBodyButtons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allDrawerButtons = [hatButton0, hatButton1, hatButton2, hatButton3, hatButton4, hatButton5, hatButton6, hatButton7, faceButton0, faceButton1, faceButton2, faceButton3, faceButton4, bodyButton0, bodyButton1, bodyButton2, bodyButton3, bodyButton4, bodyButton5, bodyButton6, bodyButton7]
        allHatButtons = [hatButton0, hatButton1, hatButton2, hatButton3, hatButton4, hatButton5, hatButton6, hatButton7]
        allFaceButtons = [faceButton0, faceButton1, faceButton2, faceButton3, faceButton4]
        allBodyButtons = [bodyButton0, bodyButton1, bodyButton2, bodyButton3, bodyButton4, bodyButton5, bodyButton6, bodyButton7]
        
        for button in allDrawerButtons {
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor(colorLiteralRed: (68/255), green: (81/255), blue: (71/255), alpha: 1.0).cgColor
        }
        
        hatButton0.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        faceButton0.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        bodyButton0.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        
        let buttonCount = allDrawerButtons.count + 1
        drawerScrollView.contentSize.width = CGFloat((buttonCount*80) + 10)
    }

    @IBAction func didTapHatButton(_ sender: UIButton) {
        unstyleHatButtons()
        
        sender.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        
        if sender.tag == 20 {
            hatsImageView.image = nil
        } else if sender.tag == 21 {
            hatsImageView.image = UIImage(named: "hat1")
        } else if sender.tag == 22 {
            hatsImageView.image = UIImage(named: "hat2")
        } else if sender.tag == 23 {
            hatsImageView.image = UIImage(named: "hat3")
        } else if sender.tag == 24 {
            hatsImageView.image = UIImage(named: "hat4")
        } else if sender.tag == 25 {
            hatsImageView.image = UIImage(named: "hat5")
        } else if sender.tag == 26 {
            hatsImageView.image = UIImage(named: "hat6")
        } else if sender.tag == 27 {
            hatsImageView.image = UIImage(named: "hat7")
        }
    }
    
    func unstyleHatButtons() {
        for button in allHatButtons {
            button.layer.borderColor = UIColor(colorLiteralRed: (68/255), green: (81/255), blue: (71/255), alpha: 1.0).cgColor
        }
    }
    
    @IBAction func didTapFaceButton(_ sender: UIButton) {
        unstyleFaceButtons()
        
        sender.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        
        if sender.tag == 30 {
            faceImageView.image = nil
        } else if sender.tag == 31 {
            faceImageView.image = UIImage(named: "face1")
        } else if sender.tag == 32 {
            faceImageView.image = UIImage(named: "face2")
        } else if sender.tag == 33 {
            faceImageView.image = UIImage(named: "face3")
        } else if sender.tag == 34 {
            faceImageView.image = UIImage(named: "face4")
        }
    }
    
    func unstyleFaceButtons() {
        for button in allFaceButtons {
            button.layer.borderColor = UIColor(colorLiteralRed: (68/255), green: (81/255), blue: (71/255), alpha: 1.0).cgColor
        }
    }


    @IBAction func didTapBodyButton(_ sender: UIButton) {
        unstyleBodyButtons()
        
        sender.layer.borderColor = UIColor(colorLiteralRed: (255/255), green: (255/255), blue: (255/255), alpha: 1.0).cgColor
        
        if sender.tag == 40 {
            bodyImageView.image = nil
        } else if sender.tag == 41 {
            bodyImageView.image = UIImage(named: "body1")
        } else if sender.tag == 42 {
            bodyImageView.image = UIImage(named: "body2")
        } else if sender.tag == 43 {
            bodyImageView.image = UIImage(named: "body3")
        } else if sender.tag == 44 {
            bodyImageView.image = UIImage(named: "body4")
        } else if sender.tag == 45 {
            bodyImageView.image = UIImage(named: "body5")
        } else if sender.tag == 46 {
            bodyImageView.image = UIImage(named: "body6")
        } else if sender.tag == 47 {
            bodyImageView.image = UIImage(named: "body7")
        }
    }
    
    func unstyleBodyButtons() {
        for button in allBodyButtons {
            button.layer.borderColor = UIColor(colorLiteralRed: (68/255), green: (81/255), blue: (71/255), alpha: 1.0).cgColor
        }
    }
}

