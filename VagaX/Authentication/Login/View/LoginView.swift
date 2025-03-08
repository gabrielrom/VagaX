import SwiftUI

struct LoginView: View {

    // MARK: State Properties
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            GreetingsView()
            Spacer()
            LoginFormView(
                email: $viewModel.email,
                password: $viewModel.password,
                signInAction: viewModel.signIn,
                forgotPasswordAction: { print("Clicou no forgot password") },
                createNewAccountAction: { print("Clicou no create new account") }
            )
            Spacer()
            ExternalLoginOptions()
            Spacer()
        }
        .padding(.horizontal, 22)
        .background(BackgroundView())
        .onTapGesture {
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    LoginView()
}
