
import ButterCMSSDK
import Combine
import NIO

class ButterCMSManager {
    static var shared = ButterCMSManager()
    let butter = ButterCMSClient(apiKey: "643774ad451526d62c9ca0f9cdacdeaff558a6ee")
    let productPagesSubject = PassthroughSubject<PagesResponse<ProductPageFields>, Error>()
    
    
    func getProductPage(eventLoop: EventLoop) -> EventLoopFuture<[Page<ProductPageFields>]> {
        let promise = eventLoop.makePromise(of: [Page<ProductPageFields>].self)
        
        butter.getPages(pageTypeSlug: "protone_landing_page", type: ProductPageFields.self) { result in
            switch result {
            case let .success(pages):
                promise.succeed(pages.data)
                
            case let .failure(error):
                promise.fail(error)
                print(error)
            }
        }
        
        return promise.futureResult
    }
}
