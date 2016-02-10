# The AIRLOCK api integration 

Slide deck: http://slides.com/alxjrvs/api-integrations

Explanation: 

API integrations scare me. Our code floats in a nightmare void of horrors, so it's not a bad idea to get a little hands-on with our integration methodology. 


files: 

`basic_slack.rb` - A rudimentary, classes implementation of the Slack integration. 

`slack_service.rb` - a basic 'service object' design for integrating with API's. 

`slack.rb` - A "Service" that takes in external information and converts it into API-friendly parameters, with an injectable API component. 

`slack_api.rb` - a thin, stateless wrapper over the HTTP calls 

`slack_fake.rb` - a Data formatter, meant to be the API when we run our tests. 
