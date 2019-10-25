//
//  SilverSponsorCard.swift
//  NSBrazilConf
//
//  Created by resource on 21/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct SilverSponsorCard: View {
    var sponsor: Sponsor
    
    var body: some View {
        ZStack(alignment: .center) {
            Image(uiImage: sponsor.logo)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 78, height: 78)
                .padding()
        }
        .frame(width: 48, height: 48)
        .padding(24)
        .background(sponsor.background)
        .cornerRadius(10)
        
    }
}

struct SilverSponsorCard_Previews: PreviewProvider {
    static var previews: some View {
        SilverSponsorCard(sponsor: Sponsor(name: "", link: URL(string: "www")!, image: URL(string: "www")!, backgroundColor: ""))
    }
}


