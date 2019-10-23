
import SwiftUI

struct HomeList: View {
    var videos = videosData
    var feedViewModel: FeedViewModel

    @State var showContent = false
    
    var body: some View {
        ScrollView {
            EllipseHeaderView()
            VStack(alignment: .leading ,spacing: 24) {
                CocoaHeadsTitleView()
                ForEach(0..<feedViewModel.feed.count) { feedIndex in
                    FeedBuilder.view(for: self.feedViewModel.feed[feedIndex])
                }
                TitleHeaderView()
                    .padding(.leading, 8)
                
                PastVideosViewSection(pastVideos: videos)
            
                SponsorHeaderView()
                
                SponsorsViewSection()
            }
            .padding(.bottom, 124)
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList(feedViewModel: FeedViewModel())
    }
}


let videosData = [
    Video(title: "GraphQL no iOS na Prática", speaker: "Felipe Lefèvre Marino", background: URL(string: "https://google.com")!, link: URL(string: "https://www.cocoaheads.com.br/videos/detalhes/20")!),
    Video(title: "Migrando seu app para SwiftUI + Combine", speaker: "Fernando Nazario Sousa", background: URL(string: "https://google.com")!, link: URL(string: "https://www.cocoaheads.com.br/videos/detalhes/20")!)
]


struct SponsorHeaderView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 8) {
                Text("NSBrazil é apoiada por")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(2)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 24)

    }

}

