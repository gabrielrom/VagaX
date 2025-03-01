import SwiftUI

struct RectangularPlainButton: ButtonStyle {
    let font: Font
    let textColor: Color
    let height: CGFloat
    let width: CGFloat?
    
    init(
        font: Font = .poppinsNormalSemiBold,
        textColor: Color = .primaryBlack,
        height: CGFloat = 60,
        width: CGFloat? = nil
    ) {
        self.font = font
        self.textColor = textColor
        self.height = height
        self.width = width
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: width ?? .infinity, maxHeight: height)
            .font(font)
            .foregroundStyle(textColor)
    }
}
