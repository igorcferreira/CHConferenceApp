//
//  SponsorViewSection.swift
//  NSBrazilConf
//
//  Created by Douglas Alexandre Barros Taquary on 23/10/19.
//  Copyright © 2019 Cocoaheadsbr. All rights reserved.
//

import SwiftUI

struct SponsorsViewSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            PlatinumSponsorsRow()
            HStack {
                GoldSponsorsRow()
                SilverSponsorsRow()
                Spacer()
            }
        }
    }
}

struct SponsorsViewSection_Previews: PreviewProvider {
    static var previews: some View {
        SponsorsViewSection()
    }
}
