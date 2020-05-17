import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showOption2(_ sender: Any) {
        boardView.flag = 2
        boardView.setNeedsDisplay()
    }
    
    @IBAction func showOption1(_ sender: Any) {
        boardView.flag = 1
        boardView.setNeedsDisplay()
    }
}

