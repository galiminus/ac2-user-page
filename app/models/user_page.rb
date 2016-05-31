class UserPage < Page
  SCHEMA = {
    "type": "object",
    "properties": {
      "personal_informations": {
        "type": "object",
        "properties": {
          "user_name": {
            "type": "string"
          },
          "full_name": {
            "type": "string"
          },
          "country": {
            "type": "string"
          }
        },
        "required": ["user_name", "full_name"],
        "additionalProperties": false
      }
    },
    "required": ["personal_informations"],
    "additionalProperties": false
  }

  validates :data, json: { schema: -> { SCHEMA }, options: { strict: false }, message: -> (errors) { errors } }
end
