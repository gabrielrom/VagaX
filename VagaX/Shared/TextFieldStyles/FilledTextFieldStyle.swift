import Foundation
import SwiftUI

struct FilledTextFieldStyle: TextFieldStyle {
    
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let borderWidth: CGFloat
    let borderColorWhenIsFocused: Color
    let width: CGFloat
    let height: CGFloat
    let isFocused: Bool
    
    init(
        backgroundColor: Color = .tertiaryBlue,
        cornerRadius: CGFloat = 10,
        borderWidth: CGFloat = 2,
        borderColorWhenIsFocused: Color = .primaryBlue,
        width: CGFloat = .infinity,
        height: CGFloat = 64,
        isFocused: Bool
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColorWhenIsFocused = borderColorWhenIsFocused
        self.width = width
        self.height = height
        self.isFocused = isFocused
    }
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(20)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(
                        isFocused ? borderColorWhenIsFocused : backgroundColor,
                        lineWidth: borderWidth
                    )
            }
            .frame(maxWidth: width, maxHeight: height)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
    }
}

#Preview {
    TextField("", text: .constant(""), prompt: Text("Filled Text Field Style").foregroundStyle(.primaryGray))
        .textFieldStyle(FilledTextFieldStyle(isFocused: false))
        .padding()
    
    TextField("", text: .constant(""), prompt: Text("Filled Text Field Style").foregroundStyle(.primaryGray))
        .textFieldStyle(FilledTextFieldStyle(isFocused: true))
        .padding()
}
