//
//  POPUP.swift
//  instacart
//
//  Created by Neel  on 26/09/23.
//

import UIKit

class POPUP: UIView {

    @IBOutlet weak var okaybtn: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibsetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    }
    
    func xibsetup(frame : CGRect){
        let view = loadxib()
        view.frame = frame
        addSubview(view)
    }
    
    
    func loadxib() -> UIView{
        let bundlle = Bundle(for: type(of: self ))
        let nib = UINib(nibName: "Popupview", bundle: bundlle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIResponder
        return view! as! UIView
    }
    
    
}
