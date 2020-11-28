import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct LearnWithKarthick: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Learn with Karthick"
    var description = "I'm a professional iOS developer with 4+ years of experience. I would like to share my learning and findings with you all as blogs"
    var language: Language { .english }
    var imagePath: Path? { Path("https://drive.google.com/file/d/1T6arRQczVgDkIL2mf43w6LHDs_1suNtz/view?usp=sharing") }
}

// This will generate your website using the built-in Foundation theme:
try LearnWithKarthick().publish(withTheme: .foundation)
try LearnWithKarthick().publish(using: [.deploy(using: .gitHub("git@github.com:karthironald/LearnWithKarthick.git", useSSH: false))])

