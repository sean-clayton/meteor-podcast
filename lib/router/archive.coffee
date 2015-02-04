ArchivePageController = RouteController.extend
  fastRender: true
  template: "archiveView"


Router.route "/archive",
  name: "archive"