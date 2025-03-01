import SwiftUI

struct OnboardingView: View {
    
    private var onboardingImage: some View {
        Image(.imageOnboarding)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 368.61, maxHeight: 331.43)
    }
    
    private var onbordingDescription: some View {
        VStack {
            Text("Discover Your Dream Job here")
                .font(.poppinsExtraLargeSemiBold)
                .foregroundColor(.primaryBlue)
                .multilineTextAlignment(.center)
            
            Spacer().frame(maxHeight: 23)
            
            Text("Explore all the existing job roles based on your interest and study major")
                .font(.poppinsSuperSmallRegular)
                .foregroundStyle(.primaryBlack)
                .multilineTextAlignment(.center)
        }
    }
    
    private var onboardingButtons: some View {
        HStack {
            Button("Login") {}
                .buttonStyle(RectangularRoundedButton())
                .shadow(color: .secondaryBlue, radius: 8, y: 10)
            
            Spacer()
            
            Button("Register") {}
                .buttonStyle(RectangularPlainButton())
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            onboardingImage
            Spacer()
            onbordingDescription
            Spacer()
            onboardingButtons
            Spacer()
        }
        .padding(.horizontal, 22)
        .background(
            VStack {
                Image(.imageBackgroundElipses)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                Image(.imageBackgroundBoxes)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
            .ignoresSafeArea()
        )
    }
}

#Preview {
    OnboardingView()
}
