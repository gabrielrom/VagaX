import SwiftUI

struct GreetingsView: View {
    var body: some View {
        VStack {
            Text("Login here")
                .font(.poppinsLargeBold)
                .foregroundStyle(.primaryBlue)
            Spacer().frame(height: 26)
            Text("Welcome back you’ve\nbeen missed!")
                .font(.poppinsNormalSemiBold)
                .foregroundStyle(.primaryBlack)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    GreetingsView()
        .padding()
}
