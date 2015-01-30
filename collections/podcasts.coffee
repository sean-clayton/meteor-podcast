podcastSchemaObject = # collections2 object schema
  _id:
    type: String
    optional: true
  audioUrl:
    type: String
    optional: false
  title:
    type: String
    optional: false
  slug:
    type: String
    optional: false
  description:
    type: String
    optional: false
  photoUrl:
    type: String
    optional: false
  date:
    type: String
    optional: true
  time:
    type: String
    optional: false
  queue:
    type: String
  "queue.queue":
    type: Boolean
    optional: false
  "queue.time":
    type: String
    optional: false
  featured:
    type: Boolean
    optional: true
  listenCount:
    type: Number
    optional: true
    autoform:
      omit: true
  downloadCount:
    type: Number
    optional: true
    autoform:
      omit: true
  clickCount:
    type: Number
    optional: true
    autoform:
      omit: true

@Podcasts = new Meteor.Collection "podcasts"

podcastSchema = new SimpleSchema podcastSchemaObject

Podcasts.attachSchema podcastSchema

getPodcastProperties = (podcast) ->
  podcast =
    podcastTitle: stripHTML podcast.title

submitPodcast = (podcast) ->
  defaultProperties =
    time: new Date()
    listenCount: 0
    downloadCount: 0
    clickCount: 0
    featured: false

  podcast = _.extend defaultProperties, podcast