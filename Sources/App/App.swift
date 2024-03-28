import Vercel
import TokamakStaticHTML

@main
struct App: ExpressHandler {
  
  static func configure(router: Router) async throws {
    router.get("/", Home())
    router.get("/detail", Detail())
  }
  
}

