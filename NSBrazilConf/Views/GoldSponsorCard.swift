
import SwiftUI

struct GoldSponsorCard: View {
    
    var item = SponsorViewModel(title: "iFood", image: "ic_ifood", background: Color("iFoodColor"))
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 72, height: 48)
                .padding()

        }
        .frame(width: 48, height: 48)
        .padding(24)
        .background(item.background)
        .cornerRadius(10)
        
    }
}

struct GoldSponsorCard_Previews: PreviewProvider {
    static var previews: some View {
        GoldSponsorCard()
    }
}

