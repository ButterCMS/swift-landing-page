
import Vapor
import Foundation

struct ApiController {
   
    }



//struct APIFetcher {
//    func fetchData(req:Request) async throws -> EventLoopFuture<Response> {
//        return req.client.get("https://httpbin.org/json").flatMapThrowing { res in
//            try res.content.decode(Response)
//        }
//    }
//}
//
//// Usage
//let apiFetcher = APIFetcher()
//apiFetcher.fetchData().flatMap { json in
//    // Use JSON here
//}.whenComplete { result in
//    switch result {
//    case .success(let json):
//        // Handle successful response
//    case .failure(let error):
//        // Handle error
//    }
//}
