//
//  SecondView.swift
//  TestUI
//
//  Created by Ayman Omara on 14/04/2022.
//

import SwiftUI

struct SecondView: View {
    var text:String
    var body: some View {
        Text(text)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(text: "nil")
    }
}
