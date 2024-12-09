import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var counterLabel: NSTextField!
    
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounterLabel()
    }

    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        updateCounterLabel()
    }
    
    @IBAction func decreaseCounter(_ sender: Any) {
        if(counter>0){
            counter -= 1
            updateCounterLabel()
        }else{
            return
        }
    }

    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        updateCounterLabel()
    }

    func updateCounterLabel() {
        counterLabel.stringValue = "\(counter)"
    }
}
