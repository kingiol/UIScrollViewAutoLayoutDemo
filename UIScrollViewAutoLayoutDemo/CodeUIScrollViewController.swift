//
//  CodeUIScrollViewController.swift
//  UIScrollViewAutoLayoutDemo
//
//  Created by Kingiol on 15/10/22.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import UIKit

class CodeUIScrollViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var contentView: UIView!
    
    var topLabel: UILabel!
    var boxView: UIView!
    var bottomLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        automaticallyAdjustsScrollViewInsets = false
        
        // Do any additional setup after loading the view.
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor.blueColor()
        view.addSubview(scrollView)
        
        contentView = UIView()
        contentView.backgroundColor = UIColor.redColor()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        
        let viewsDictionary = ["topLayoutGuide": topLayoutGuide, "scrollView": scrollView, "contentView": contentView]

        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(0)-[scrollView]-(0)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary as! [String : AnyObject]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(0)-[scrollView]-(0)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary as! [String : AnyObject]))
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(0)-[contentView]-(0)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary as! [String : AnyObject]))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(0)-[contentView]-(0)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary as! [String : AnyObject]))
        
        view.addConstraint(NSLayoutConstraint(item: contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
        
        addContentSubViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addContentSubViews() {
        topLabel = UILabel()
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.textAlignment = NSTextAlignment.Center
        topLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        topLabel.text = "Twitter (Officially) Launches Polls"
        contentView.addSubview(topLabel)
        
        boxView = UIView()
        boxView.backgroundColor = UIColor.yellowColor()
        boxView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(boxView)
        
        bottomLabel = UILabel()
        bottomLabel.numberOfLines = 0
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        bottomLabel.text = "Twitter’s been playing around with polls for the past month or so…right out in the open. Today’s announcement shouldn’t come as a surprise if you follow anyone who works for the company or runs in tech’s inner circles. Over the next few days, everyone will be able to pepper you with yes/no, two-option polls. Why only two options? Not sure, but it’s something that’ll probably expand over time.\n\nI’m not a fan, but hey, what do I know. I just feel like it limits interaction, but as we know, Twitter needs a few spurts of growth, and lighter engagement points will help for those who are slowly being enticed into joining or rejoining.\n\nThe nice part about Twitter Polls is that you’re not being tracked when you vote, meaning your participation isn’t made public to anyone and I’m told that the data isn’t being shared with marketing firms or brands. I would be really hesitant to respond to a “Coke or Pepsi” poll, for fear that I’d get spammed or targeted by either company.\n\nThat’s not to say that brands aren’t going to use the crap out of this, because they are. It’ll also be used quite a bit by news outlets, especially with the upcoming presidential elections."
        contentView.addSubview(bottomLabel)
        
        addContentSubViewsConstraints()
    }
    
    func addContentSubViewsConstraints() {
        let viewsDictionary = ["topLabel": topLabel, "boxView": boxView, "bottomLabel": bottomLabel]
        
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(50)-[topLabel]-[boxView(86)]-[bottomLabel]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
        
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(15)-[topLabel]-(15)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(15)-[boxView]-(15)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(15)-[bottomLabel]-(15)-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
