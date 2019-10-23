//
//  SilverSponsorCard.swift
//  NSBrazilConf
//
//  Created by resource on 21/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct SilverSponsorCard: View {
    
    var item = SponsorViewModel(title: "Air Buddy", image: "ic_airbuddy", background: Color("abColor"))
    
    var body: some View {
        ZStack(alignment: .center) {
            Image(item.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 78, height: 78)
                .padding()
        }
        .frame(width: 48, height: 48)
        .padding(24)
        .background(item.background)
        .cornerRadius(10)
        
    }
}

struct SilverSponsorCard_Previews: PreviewProvider {
    static var previews: some View {
        SilverSponsorCard()
    }
}


