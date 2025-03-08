import SwiftUI

struct BackgroundView: View {
    var body: some View {
        VStack {
            Image(.imageBackgroundElipses)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            Image(.imageBackgroundBoxes)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
        .ignoresSafeArea()
    }
}
