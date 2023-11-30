import Vapor

func routes(_ app: Application) throws {
     let websiteController = WebsiteController()
     try app.register(collection: websiteController)
}
