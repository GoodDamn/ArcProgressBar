//
//  ArcProgress.swift
//  SPOK
//
//  Created by Cell on 27.12.2021.
//

import UIKit;

@IBDesignable
class ArcProgressBar:UIView{
    
    @IBInspectable var arcWidth:CGFloat = 15.0;
    @IBInspectable var startAngle:Float = 0;
    @IBInspectable var endAngle:Float = .pi;
    @IBInspectable var maxProgress:Float = 100.0;
    @IBInspectable var arcBackground:UIColor = UIColor.black;
    
    private var radius:CGFloat=0.0;
    private var startAng:CGFloat = 0.0,
                endAng:CGFloat = 0.0;
    private var arcCenter:CGPoint = CGPoint(x: 0, y: 0);
    
    
    @IBInspectable var progress:Float = 0.0{
        didSet{
            progressLayer.strokeEnd = CGFloat(progress / maxProgress);
        }
    }
    
    private let backgroundLayer:CAShapeLayer = CAShapeLayer();
    private let progressLayer:CAShapeLayer = CAShapeLayer();
    
    private func initialize(){
        let viewFromXIB = Bundle.main.loadNibNamed("ArcProgressBar", owner: self, options: nil)![0] as! UIView;
        viewFromXIB.frame = self.bounds;
        addSubview(viewFromXIB);
    }
    
    override init(frame:CGRect){
        super.init(frame: frame);
        initialize();
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder);
    }
    
    
    override func draw(_ rect: CGRect) {
        startAngle = Float.pi * (startAngle+180) / 180;
        endAngle = Float.pi * (endAngle+180) / 180;
        
        arcCenter = CGPoint(x: bounds.width/2,y:bounds.height-arcWidth);
            
        radius = bounds.height-2*arcWidth;
        
        startAng = CGFloat(startAngle);
        endAng = CGFloat(endAngle);
        
        let circlePath:UIBezierPath = UIBezierPath(arcCenter: arcCenter, radius: radius, startAngle: startAng, endAngle:endAng, clockwise: true);
        
        backgroundLayer.path = circlePath.cgPath;
        backgroundLayer.lineCap = .round;
        backgroundLayer.fillColor = nil;
        backgroundLayer.lineWidth = arcWidth;
        backgroundLayer.strokeColor = arcBackground.cgColor;
        
        progressLayer.lineWidth = arcWidth;
        progressLayer.lineCap = .round;
        progressLayer.fillColor = nil;
        progressLayer.strokeColor = tintColor.cgColor;
        progressLayer.strokeStart = 0;
        
        progressLayer.path = UIBezierPath(arcCenter:arcCenter, radius: radius, startAngle:startAng, endAngle: endAng, clockwise:true).cgPath;
        
        layer.addSublayer(backgroundLayer);
        layer.addSublayer(progressLayer);
    }
}
