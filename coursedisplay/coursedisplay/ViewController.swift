//
//  ViewController.swift
//  coursedisplay
//
//  Created by Peddireddy,Shashidhar Reddy on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSem: UILabel!
    
    
    @IBOutlet weak var PreviousButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
    ["img02", "44643", "IOS", "Spring 2022"],
                   ["img03", "44656", "Data Streaming", "Summer 2022"]]
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the first course details ( image , CourseNumber , Title  and Sem)
        updateUI(imageNumber)
        // previous button should be disabled
        PreviousButton.isEnabled = false
        
    }

   
    @IBAction func PreviousBClicked(_ sender: UIButton) {
        NextButton.isEnabled = true
        // update UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        if(imageNumber == 0){
            NextButton.isEnabled = false
    }
    
    }
    
    @IBAction func NextBClicked(_ sender: UIButton) {
        
        imageNumber += 1
        updateUI(imageNumber)
        PreviousButton.isEnabled = true
        
        
        if(imageNumber == courses.count-1){
            NextButton.isEnabled = false
        }
    }
    
    
    
        
        
    func updateUI(_ imageNum: Int){
        displayImage.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSem.text = courses[imageNumber][3]
    }
    

}
