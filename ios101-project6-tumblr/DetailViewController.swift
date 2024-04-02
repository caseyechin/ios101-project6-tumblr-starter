//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Casey Chin on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var text: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        config()
    }
    
    private func config() {
        
        
        text.isEditable = false
        text.text = post.caption.trimHTMLTags()
        
        if let im = post.photos.first {
            let url = im.originalSize.url
            Nuke.loadImage(with: url, into: image)
        }
    
        
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
