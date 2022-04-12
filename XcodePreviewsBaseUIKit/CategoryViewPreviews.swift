//
//  CategoryViewPreviews.swift
//  XcodePreviewsBaseUIKit
//
//  Created by Motoki Onayama on 2022/04/12.
//

import SwiftUI

struct CategoryViewWrapper: UIViewRepresentable {
    
    typealias UIViewType = CategoryView
    
    let inputs: [CategoryView.Input]
    
    init(inputs: [CategoryView.Input]) {
        self.inputs = inputs
    }
    
    func makeUIView(context: Context) -> CategoryView {
        CategoryView()
    }
    
    func updateUIView(_ uiView: CategoryView, context: Context) {
        inputs.forEach {
            uiView.apply(input: $0)
        }
    }
    
}

struct CategoryViewPreviews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryViewWrapper(inputs: [.updateLabelText(labelText: "カテゴリ１"), .updateTextColor(textColor: .orange)])
                .previewDisplayName("CategoryView_type_1")
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/414.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
            CategoryViewWrapper(inputs: [.updateLabelText(labelText: "カテゴリ２"), .updateTextColor(textColor: .cyan)])
                .previewDisplayName("CategoryView_type_2")
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/414.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
            CategoryViewWrapper(inputs: [.updateLabelText(labelText: "カテゴリ３"), .updateTextColor(textColor: .lightGray)])
                .previewDisplayName("CategoryView_type_3")
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/414.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
        }
    }
}
