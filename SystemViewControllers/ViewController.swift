//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by AA1 on 26/09/17.
//  Copyright © 2017 AA1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func segmentedControlOptionTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            guard let image = self.imageView.image else { return }
            let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = sender
            present(activityViewController, animated: true, completion: nil)
        case 1: print("Oi Safari!")
        case 2: print("Oi Camera!")
        case 3: print("Oi Email")
        default: break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

