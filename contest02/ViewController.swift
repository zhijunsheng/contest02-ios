import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func problem1(_ sender: UIButton) {
        canvasView.figureIndex = 0
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func problem2(_ sender: UIButton) {
        canvasView.figureIndex = 1
        canvasView.setNeedsDisplay()
    }
}
