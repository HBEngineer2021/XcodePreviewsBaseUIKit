//
//  CategoryView.swift
//  XcodePreviewsBaseUIKit
//
//  Created by Motoki Onayama on 2022/04/12.
//

import UIKit

class CategoryView: UIView, InputAppliable {
    
    @IBOutlet private weak var label: UILabel!
    
    enum Input {
        case updateTextColor(textColor: UIColor)
        case updateLabelText(labelText: String)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    /// CategoryViewを読み込む
    private func loadNib() {
        let view = Bundle.main.loadNibNamed("CategoryView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        
        self.addSubview(view)
    }
    
    /// UIを更新する
    /// - Parameter input: UI更新用の型Input
    func apply(input: Input) {
        switch input {
        case .updateTextColor(textColor: let textColor):
            label.textColor = textColor
        case .updateLabelText(let labelText):
            label.text = labelText
        }
    }
    
}
