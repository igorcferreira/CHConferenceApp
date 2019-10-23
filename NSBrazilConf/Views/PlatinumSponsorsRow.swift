
import SwiftUI

struct PlatinumSponsorsRow: View {
    
    var sponsors = sponsorsData
    let sponsorUrl = URL(string: "https://www.apple.com")!
    
    @State var showContent = false
    
    var body: some View {
        VStack(alignment: .leading) {
                Text("Platinum")
                    .font(.system(size: 26))
                    .fontWeight(.medium)
                    .padding(.leading, 24)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 38) {
                        ForEach(sponsors) { item in
                            Button(action: { self.showContent.toggle() }) {
                                GeometryReader { geometry in
                                    PlatinumSponsorCard(
                                        item: item
                                    )
                                    .sheet(isPresented: self.$showContent) { SponsorView(sponsorUrl: self.sponsorUrl, isPresented: self.showContent) }
                                }
                                .frame(width: 124, height: 96)
                                .padding()
                            }
                        }
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
                .padding(.leading, 24)
        }
        
    }
}

struct PlatinumSponsorsRow_Previews: PreviewProvider {
    static var previews: some View {
        PlatinumSponsorsRow()
    }
}

struct SponsorViewModel: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var background: Color
}


let sponsorsData = [
    SponsorViewModel(title: "", image: "ic_merc_livre", background: Color("mcColor")),
    SponsorViewModel(title: "", image: "ic_inter_oficial", background: Color("interColor"))
]
