//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Hyung Jip Moon on 2017-03-16.
//  Copyright © 2017 leomoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var navBar: UINavigationBar = UINavigationBar()

    let plusButton = UIButton()

    var wasButtonClicked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view, typically from a nib.
        
        plusButton.frame = CGRect()
        
        plusButton.translatesAutoresizingMaskIntoConstraints = false

        plusButton.setTitle("＋", for: .normal)
        
        plusButton.addTarget(self,action:#selector(doSomething),
                             for:.touchUpInside)
        
        plusButton.setTitleColor(.blue, for: .normal)
        plusButton.isUserInteractionEnabled = true
        
        navigationController?.navigationBar.addSubview(plusButton)
  
        navigationController?.navigationBar.addConstraint(NSLayoutConstraint(item: plusButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,multiplier: 1, constant: 50))
        navigationController?.navigationBar.addConstraint(NSLayoutConstraint(item: plusButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,multiplier: 1, constant: 30))
        
        navigationController?.navigationBar.addConstraint(NSLayoutConstraint(item: plusButton, attribute: .top, relatedBy: .equal, toItem: navigationController?.navigationBar, attribute: .top, multiplier: 1, constant: 10))
        navigationController?.navigationBar.addConstraint(NSLayoutConstraint(item: plusButton, attribute: .trailingMargin, relatedBy: .equal, toItem: navigationController?.navigationBar, attribute: .trailingMargin, multiplier: 1, constant: 5))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doSomething(_ sender: UIButton)
    {

        wasButtonClicked = !wasButtonClicked
        if wasButtonClicked
        {
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.33, initialSpringVelocity: 0.0, options: [], animations: {
                self.plusButton.transform = self.plusButton.transform.rotated(
                    by: CGFloat.pi / 4)
            }, completion: nil)
            
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                let height: CGFloat = 200 //whatever height you want
                let bounds = self.navigationController!.navigationBar.bounds
                self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: height)
            })
        }
        else {
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.33, initialSpringVelocity: 0.0, options: [], animations: {
                self.plusButton.transform = self.plusButton.transform.rotated(
                    by: CGFloat.pi / 4)
            }, completion: nil)
            
            UIView.animate(withDuration: 0.1, animations: { () -> Void in
                let height: CGFloat = 64 //whatever height you want
                let bounds = self.navigationController!.navigationBar.bounds
                self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: height)
            })
        }
    }
}



