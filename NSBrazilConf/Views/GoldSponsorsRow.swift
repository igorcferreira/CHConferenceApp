
import SwiftUI

struct GoldSponsorsRow: View {
    var goldSponsors = goldSponsorsData

    let sponsorUrl = URL(string: "https://www.apple.com")!
    
    @State var showContent = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gold")
                .font(.system(size: 26))
                .fontWeight(.medium)
                .padding(.leading, 24)
                
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(goldSponsors) { item in
                        Button(action: { self.showContent.toggle() }) {
                            GeometryReader { geometry in
                                GoldSponsorCard(
                                    item: item
                                )
                                .sheet(isPresented: self.$showContent) { SponsorView(sponsorUrl: self.sponsorUrl, isPresented: self.showContent) }
                            }
                            .frame(width: 96, height: 96)
                        }                        
                    }
                }
            }
            .padding(.leading, 24)
        }
    }
}

struct GoldSponsorsRow_Previews: PreviewProvider {
    static var previews: some View {
        GoldSponsorsRow()
    }
}


let goldSponsorsData = [
    SponsorViewModel(title: "", image: "ic_ifood", background: Color("iFoodColor"))
]
