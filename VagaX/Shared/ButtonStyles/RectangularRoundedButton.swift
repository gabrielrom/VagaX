import SwiftUI

struct RectangularRoundedButton: ButtonStyle {
    let font: Font
    let textColor: Color
    let height: CGFloat
    let width: CGFloat?
    let backgroundColor: Color
    let cornerRadius: CGFloat

    init(
        font: Font = .poppinsNormalSemiBold,
        textColor: Color = .white,
        height: CGFloat = 60,
        width: CGFloat? = nil,
        backgroundColor: Color = .primaryBlue,
        cornerRadius: CGFloat = 10
    ) {
        self.font = font
        self.textColor = textColor
        self.height = height
        self.width = width
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: width ?? .infinity, maxHeight: height)
            .font(font)
            .foregroundStyle(textColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
