import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    //    app.middleware = init()
    let files = FileMiddleware(publicDirectory: app.directory.publicDirectory)
    app.middleware.use(files)
    app.views.use(.leaf)
    // register routes
    try routes(app)
}
