import SwiftUI

struct RectangularPlainButton: ButtonStyle {
    let font: Font
    let textColor: Color
    let height: CGFloat?
    let width: CGFloat?
    
    init(
        font: Font = .poppinsNormalSemiBold,
        textColor: Color = .primaryBlack,
        height: CGFloat? = nil,
        width: CGFloat? = nil
    ) {
        self.font = font
        self.textColor = textColor
        self.height = height
        self.width = width
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: width, maxHeight: height)
            .font(font)
            .foregroundStyle(textColor)
    }
}

#Preview {
    Button("Hello") {}
        .buttonStyle(RectangularPlainButton())
    
}
