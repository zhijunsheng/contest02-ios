import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    @IBOutlet weak var boardSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardSlider.minimumValue = 10
        boardSlider.maximumValue = 209
    }

    @IBAction func showOption2(_ sender: Any) {
        boardView.flag = 2
        boardView.setNeedsDisplay()
    }
    
    @IBAction func showOption1(_ sender: Any) {
        boardView.flag = 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func moveSlider(_ sender: UISlider) {
        boardView.h1 = CGFloat(sender.value)
        boardView.setNeedsDisplay()
    }
}

