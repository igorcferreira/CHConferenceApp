//
//  SilverSponsorsRow.swift
//  NSBrazilConf
//
//  Created by resource on 21/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct SilverSponsorsRow: View {
    var silverSponsors = silverSponsorsData
    
    let sponsorUrl = URL(string: "https://www.apple.com")!
    
    @State var showContent = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Silver")
                .font(.system(size: 26))
                .fontWeight(.medium)
                .padding(.leading, 24)
                
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(silverSponsors) { item in
                        Button(action: { self.showContent.toggle() }) {
                            GeometryReader { geometry in
                                SilverSponsorCard(
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

struct SilverSponsorsRow_Previews: PreviewProvider {
    static var previews: some View {
        SilverSponsorsRow()
    }
}


let silverSponsorsData = [
    SponsorViewModel(title: "AirBuddy", image: "ic_airbuddy", background: Color("abColor"))
]
