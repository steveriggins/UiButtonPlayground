//: Shows how you can show the view of a view controller in a playground

import UIKit

class ButtonViewController : UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        self.view.frame = CGRect(x: 0, y: 0, width: 300, height: 10 * 44) // Some arbitrary size
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: UIButtonType.RoundedRect)
        button.frame = CGRect(x:0, y: 40, width: 100, height: 20)
        button.setTitle("Press Me", forState: UIControlState.Normal)
        button.addTarget(self, action: Selector("buttonPressed"), forControlEvents: UIControlEvents.TouchDown)
        self.view.addSubview(button)
    }
    
    func buttonPressed() {
        print("The button, it was pressed") // Or not
    }
    
}

let bv = ButtonViewController().view
