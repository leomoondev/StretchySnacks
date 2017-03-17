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
    
    func doSomething(_ sender: UIButton) {
        wasButtonClicked = !wasButtonClicked
        
//        self.plusButton.layer.anchorPoint = CGPoint(x: self.plusButton.center.x, y: self.plusButton.center.y)

        let stackView   = UIStackView()
        let imageView1 = UIImageView()
        let imageView2 = UIImageView()
        let imageView3 = UIImageView()
        let imageView4 = UIImageView()
        let imageView5 = UIImageView()

        if wasButtonClicked
        {
            

            
            //Stack View
            stackView.axis  = UILayoutConstraintAxis.horizontal
            stackView.distribution  = UIStackViewDistribution.equalSpacing
            stackView.alignment = UIStackViewAlignment.leading
            stackView.spacing   = 0
            
            imageView1.backgroundColor = UIColor.blue
            imageView1.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
            imageView1.widthAnchor.constraint(equalToConstant: self.view.frame.width/5).isActive = true
            imageView1.image = UIImage(named: "oreos")
            
            imageView2.backgroundColor = UIColor.blue
            imageView2.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
            imageView2.widthAnchor.constraint(equalToConstant: self.view.frame.width/5).isActive = true
            imageView2.image = UIImage(named: "pizza_pockets")
            
            imageView3.backgroundColor = UIColor.blue
            imageView3.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
            imageView3.widthAnchor.constraint(equalToConstant: self.view.frame.width/5).isActive = true
            imageView3.image = UIImage(named: "pop_tarts")
            
            imageView4.backgroundColor = UIColor.blue
            imageView4.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
            imageView4.widthAnchor.constraint(equalToConstant: self.view.frame.width/5).isActive = true
            imageView4.image = UIImage(named: "popsicle")
            
            imageView5.backgroundColor = UIColor.blue
            imageView5.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
            imageView5.widthAnchor.constraint(equalToConstant: self.view.frame.width/5).isActive = true
            imageView5.image = UIImage(named: "ramen")
            
            stackView.addArrangedSubview(imageView1)
            stackView.addArrangedSubview(imageView2)
            stackView.addArrangedSubview(imageView3)
            stackView.addArrangedSubview(imageView4)
            stackView.addArrangedSubview(imageView5)

            
            stackView.translatesAutoresizingMaskIntoConstraints = false;
            
            navigationController?.navigationBar.addSubview(stackView)
            
            //Constraints
            stackView.leadingAnchor.constraint(equalTo: (navigationController?.navigationBar.leadingAnchor)!).isActive = true
            stackView.bottomAnchor.constraint(equalTo: (navigationController?.navigationBar.bottomAnchor)!).isActive = true
            //stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            //stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

            
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.33, initialSpringVelocity: 0.0, options: [], animations: {
                
                //self.plusButton.layer.anchorPoint = CGPoint(x: self.plusButton.center.x, y: self.plusButton.center.y)
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
            
            //stackView.removeArrangedSubview((navigationController?.navigationBar)!)
            //navigationController?.navigationBar.removeFromSuperview()
            
            stackView.removeArrangedSubview(imageView1)
            //stackView.addArrangedSubview(imageView2)
            //stackView.addArrangedSubview(imageView3)
            //stackView.addArrangedSubview(imageView4)
            //stackView.addArrangedSubview(imageView5)
            
            
            stackView.translatesAutoresizingMaskIntoConstraints = false;
            
            //navigationController?.navigationBar.willRemoveSubview(stackView)
            
            //navigationController?.navigationBar.isHidden = true

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



