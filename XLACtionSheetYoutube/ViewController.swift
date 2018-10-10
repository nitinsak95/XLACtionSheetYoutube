//
//  ViewController.swift
//  XLACtionSheetYoutube
//
//  Created by AFFIXUS IMAC1 on 4/21/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import XLActionController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func open(_ sender: UIButton) {
        
        let actionController = YoutubeActionController()
        
        actionController.addAction(Action(ActionData(title: "ic"), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Add to Playlist...", image: UIImage(named: "ic1")!), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Share...", image: UIImage(named: "ic1")!), style: .default, handler: { action in
        }))
        actionController.addAction(Action(ActionData(title: "Cancel", image: UIImage(named: "ic1")!), style: .cancel, handler: nil))
        
        present(actionController, animated: true, completion: nil)
    }
    
}

