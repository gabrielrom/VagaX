import SwiftUI

struct ExternalLoginOptions: View {
    var body: some View {
        VStack {
            Text("Or continue with")
                .foregroundStyle(.primaryBlue)
                .font(.poppinsSuperSmallSemiBold)
            Spacer().frame(height: 20)
            HStack {
                Button {
                    // TODO: FAZER REDIRECIONAMENTO
                } label: {
                    Image(.iconGoogleLogo)
                }
    
                Button {
                    // TODO: FAZER REDIRECIONAMENTO
                } label: {
                    Image(.iconFacebookLogo)
                }

                Button {
                    // TODO: FAZER REDIRECIONAMENTO
                } label: {
                    Image(.iconAppleLogo)
                }
            }
            .buttonStyle(RectangularRoundedButton(
                height: 44,
                width: 60,
                backgroundColor: .secondaryGray
            ))
        }
    }
}

#Preview {
    ExternalLoginOptions()
        .padding()
}
