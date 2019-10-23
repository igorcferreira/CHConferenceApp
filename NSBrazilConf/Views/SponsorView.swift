
import SwiftUI

struct SponsorView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var sponsorUrl = URL(string: "https://www.apple.com")!
    
    @State var isPresented = false
    
    var body: some View {
            ZStack(alignment: .topTrailing) {
                VStack(alignment: .trailing) {
                    ZStack(alignment: .topTrailing) {
                        Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                            Text("Voltar")
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding()
                    
                    SponsorWebView(
                        url: sponsorUrl
                    )
                }
            }

    }
}

struct SponsorView_Previews: PreviewProvider {
    static var previews: some View {
        SponsorView()
    }
}

