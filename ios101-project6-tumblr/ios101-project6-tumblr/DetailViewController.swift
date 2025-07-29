import UIKit
import NukeExtensions

class DetailViewController: UIViewController {
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var summaryTextView: UITextView!
    
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Post Details"
        // Configure the UI with the post data
        if let post = post {
            summaryTextView.text = post.caption.trimHTMLTags()
            summaryTextView.isEditable = false // Prevent editing
            summaryTextView.isScrollEnabled = true // Allow scrolling
            if let photo = post.photos.first {
                let url = photo.originalSize.url
                postImageView.contentMode = .scaleAspectFill // Make image fill width
                postImageView.clipsToBounds = true // Prevent overflow
                NukeExtensions.loadImage(with: url, into: postImageView)
            }
        }
    }
}
