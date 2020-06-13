import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    @IBOutlet weak var boardSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showOption2(_ sender: Any) {
        boardSlider.minimumValue = 0
        boardSlider.maximumValue = 200
        boardView.flag = 2
        boardView.setNeedsDisplay()
    }
    
    @IBAction func showOption1(_ sender: Any) {
        boardSlider.minimumValue = 10
        boardSlider.maximumValue = 209
        boardView.flag = 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func moveSlider(_ sender: UISlider) {
        if boardView.flag == 1 {
            boardView.h1 = CGFloat(sender.value)
        } else if boardView.flag == 2 {
            boardView.b = CGFloat(sender.value)
        } else {
            // My iPad  is 8%
        }
        
        boardView.setNeedsDisplay()
    }
}

