//
//  ViewController.swift
//  PageScroll
//
//  Created by Paul Minh Pham on 6/22/17.
//  Copyright © 2017 Paul Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    var images = [UIImageView]()
    var currentPos: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollViewWidth = ScrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            
            contentWidth += newX
            
            ScrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y:(ScrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        ScrollView.clipsToBounds = false
        ScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    @IBAction func RightSwipe(_ sender: Any) {
        if currentPos != (ScrollView.frame.size.width * CGFloat(images.count - 1)) {
            currentPos += ScrollView.frame.size.width
        }
        
        let posRight = CGRect(x: currentPos, y: 0.0, width: ScrollView.frame.size.width, height: ScrollView.frame.size.height)
        
        ScrollView.scrollRectToVisible(posRight, animated: true)
    }
    
    @IBAction func LeftSwipe(_ sender: Any) {
        if currentPos != 0 {
            currentPos -= ScrollView.frame.size.width
        }
        
        let posRight = CGRect(x: currentPos, y: 0.0, width: ScrollView.frame.size.width, height: ScrollView.frame.size.height)
        
        ScrollView.scrollRectToVisible(posRight, animated: true)
    }

}

