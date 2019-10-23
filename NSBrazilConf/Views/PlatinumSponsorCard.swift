

import SwiftUI

struct PlatinumSponsorCard: View {
    var item = SponsorViewModel(title: "Mercado Livre", image: "ic_merc_livre", background: Color("mcColor"))
    
    var body: some View {
        VStack(alignment: .center) {
                Image(item.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 124, height: 72)
                    .padding()
        }
        .background(item.background)
        .cornerRadius(10)
        .frame(width: 124, height: 72)
        .padding(24)
        
    }
}

struct SponsorCard_Previews: PreviewProvider {
    static var previews: some View {
        PlatinumSponsorCard()
    }
}


