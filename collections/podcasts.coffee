podcastSchemaObject =
  _id:
    type: String
    optional: true
  mp3Url:
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
  "time.queue":
    type: Boolean
    required: true
  "time.queueTime":
    type: String
    required: false