import UIKit

class ElasticTextField: UITextField {
    
    // 1
    var elasticView : ElasticView!
    
    // 2
    @IBInspectable var overshootAmount: CGFloat = 10 {
        didSet {
            elasticView.overshootAmount = overshootAmount
        }
    }
    
    // 3
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
     //   fatalError("需要init！")
    super.init(coder: aDecoder)
        setupView()
    }
    
    // 4
    func setupView() {
        // A
        clipsToBounds = false
        borderStyle = .None
        
        // B
        elasticView = ElasticView(frame: bounds)
        elasticView.backgroundColor = UIColor.redColor()
        addSubview(elasticView)
        
        // C
        backgroundColor = UIColor.clearColor()
        
        // D
        elasticView.userInteractionEnabled = false
    }
    
    // 5
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        elasticView.touchesBegan(touches, withEvent: event)
    }
    
    // Add some padding to the text and editing bounds
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 5)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 5)
    }
}