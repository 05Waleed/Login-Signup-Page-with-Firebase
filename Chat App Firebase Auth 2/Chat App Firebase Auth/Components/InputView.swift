//
//  InputView.swift
//  Chat App Firebase Auth
//
//  Created by Muhammad Waleed on 20.09.23.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    let isSecureField: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
//                .font(.footnote)
                .font(.system(size: 16))
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 18))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 18))
            }
            
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com", isSecureField: false)
    }
}
