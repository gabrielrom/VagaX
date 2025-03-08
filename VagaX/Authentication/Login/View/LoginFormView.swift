import SwiftUI

struct LoginFormView: View {

    // MARK: State Properties
    
    @Binding var email: String
    @Binding var password: String
    
    @FocusState private var isEmailFieldFocused: Bool
    @FocusState private var isPasswordFieldFocused: Bool
    
    // MARK: Action Funcions
    
    var signInAction: () -> Void
    var forgotPasswordAction: () -> Void
    var createNewAccountAction: () -> Void
    
    var body: some View {
        VStack {
            TextField(
                "",
                text: $email,
                prompt: Text("Email").foregroundStyle(.primaryGray)
            )
                .focused($isEmailFieldFocused)
                .textFieldStyle(FilledTextFieldStyle(isFocused: isEmailFieldFocused))
                .keyboardType(.emailAddress)

            Spacer().frame(height: 29)
            
            SecureField(
                "",
                text: $password,
                prompt: Text("Password").foregroundStyle(.primaryGray)
            )
                .focused($isPasswordFieldFocused)
                .textFieldStyle(FilledTextFieldStyle(isFocused: isPasswordFieldFocused))
            
            Spacer().frame(height: 30)
            
            HStack {
                Spacer()
                Button("Forgot your password?", action: forgotPasswordAction)
                    .buttonStyle(RectangularPlainButton(
                        font: .poppinsSuperSmallSemiBold,
                        textColor: .primaryBlue
                    ))
            }
            
            Spacer().frame(height: 30)

            Button("Sign in", action: signInAction)
                .buttonStyle(RectangularRoundedButton())
                .shadow(color: .secondaryBlue, radius: 8, y: 10)
            
            Spacer().frame(height: 30)

            Button("Create new account", action: createNewAccountAction)
                .buttonStyle(RectangularPlainButton(font: .poppinsSuperSmallSemiBold, height: 40))
        }
    }
}

#Preview {
    LoginFormView(
        email: .constant(""),
        password: .constant(""),
        signInAction: {},
        forgotPasswordAction: {},
        createNewAccountAction: {}
    ).padding()
}
