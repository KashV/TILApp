import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    router.get { req in
        return "It works!"
    }
    
    let acronymsController = AcronymsController()
    
    try router.register(collection: acronymsController)
    
    let usersController = UsersController()
    
    try router.register(collection: usersController)
    
    let categoriesController = CategoriesController()
    
    try router.register(collection: categoriesController)
}
