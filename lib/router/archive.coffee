ArchivePageController = RouteController.extend
  fastRender: true

Router.route "/archive",
  name: "archive"
  template: "archive"
  controller: ArchivePageController