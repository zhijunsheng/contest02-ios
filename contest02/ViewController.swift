import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasview: CanvasView!
    @IBOutlet weak var option01Slider: UISlider!
    @IBOutlet weak var option02Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        option01Slider.minimumValue = 10
        option01Slider.maximumValue = 200
        option02Slider.minimumValue = 0
        option02Slider.maximumValue = 200
    }


    @IBAction func mutate01Slider(_ sender: Any) {
        canvasview.h = CGFloat(option01Slider.value)
        canvasview.setNeedsDisplay()
    }
    @IBAction func mutate02Slider(_ sender: Any) {
        canvasview.b = CGFloat(option02Slider.value)
        canvasview.setNeedsDisplay()
    }
}

