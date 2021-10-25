//
//  ViewController.swift
//  UIExample
//
//  Created by Jesus Jaime Cano Terrazas on 19/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var x = ""

    @IBOutlet weak var helloWorld: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.editHelloWorldLabel()
        
    }
    
    func editHelloWorldLabel() {
        print(self.helloWorld.text!)
        helloWorld.text = "Inberg me la pelas en donde sea"
    }
    
    // Actions
    
    // MARK: - Buttons
    @IBAction func leftButton(_ sender: UIButton){
        //self.firstButton.setTitle("Hola chiquillas", for: .normal)
        
        self.helloWorld.textAlignment = .left
        
        self.image.image = UIImage(named: "el-nucleo-del-planeta-explotando_1920x1200_xtrafondos.com")
    }
    
    @IBAction func centerButton(_ sender: UIButton) {
        self.helloWorld.textAlignment = .center
    }
    
    
    @IBAction func rightButton(_ sender: UIButton) {
        self.helloWorld.textAlignment = .right
    }
    
    @IBAction func redTextButton(_ sender: UIButton) {
        self.helloWorld.textColor = .red
        self.helloWorld.textColor = UIColor.red
    }
    
    @IBAction func blueTextButton(_ sender: UIButton) {
        let redRGB: UIColor = UIColor.init(red: 189.0/255, green: 27.0/255, blue: 27.0/255, alpha: 1)
        
        self.helloWorld.textColor = .blue
        self.helloWorld.textColor = redRGB
    }
    
    @IBAction func yellowTextButton(_ sender: UIButton) {
        self.helloWorld.textColor = .yellow
    }

    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
        self.image.alpha = CGFloat(sender.value)
    }
    
    //methods
    
    

}

