import Leaf
import Vapor
import Foundation
import ButterCMSSDK

struct WebsiteController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: landingPageHandler)
    }
    
    func landingPageHandler(_ req: Request) -> EventLoopFuture<View> {
        let pageFuture = ButterCMSManager.shared.getProductPage(eventLoop: req.eventLoop)
        
        return pageFuture.flatMap { pages in
            let typedPages = pages as [ButterCMSSDK.Page<ProductPageFields>]?
            let fields = typedPages?.first?.fields
            let context = PageContext(data: fields)

            return req.view.render("index", context)
        }
    }
}

struct PageContext: Encodable {
    let data: ProductPageFields?
}
