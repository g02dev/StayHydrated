// 

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var todayWaterView: UIView!
    @IBOutlet weak var currentWaterLabel: UILabel!
    @IBOutlet weak var targetWaterLabel: UILabel!
    @IBOutlet weak var progreeView: UIProgressView!
    
    @IBAction func add150Ml(_ sender: Any) {
        addWater(ml: 150)
    }
    
    @IBAction func add250Ml(_ sender: Any) {
        addWater(ml: 250)
    }
    
    @IBAction func add350Ml(_ sender: Any) {
        addWater(ml: 350)
    }
    
    @IBAction func add500Ml(_ sender: Any) {
        addWater(ml: 500)
    }
    
    var waterManager = WaterManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        todayWaterView.layer.cornerRadius = 10.0
        updateUI()
    }
    
    func addWater(ml: Int) {
        waterManager.addWater(ml: ml)
        updateUI()
    }
    
    func updateUI() {
        currentWaterLabel.text = "\(waterManager.currentWaterMl)"
        targetWaterLabel.text = "\(waterManager.targerWaterMl) ml"
        progreeView.progress = waterManager.targetCompletionRate
    }

}
