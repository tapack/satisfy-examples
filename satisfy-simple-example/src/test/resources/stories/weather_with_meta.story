Scenario: Get weather second time
Given web service endpoint 'http://wsf.cdyne.com/WeatherWS/Weather.asmx' and web service soap action 'http://ws.cdyne.com/WeatherWS/GetWeatherInformation'
When send SOAP msg from file '/GetWeatherInformationRequest.xml'
Then verify that response is equal to file '/GetWeatherInformationResponse.xml'
Then verify that response is similar to file '/GetWeatherInformationSimilarResponse.xml'

Scenario: Get weather again
Meta:
@smoke on
Given web service endpoint 'http://wsf.cdyne.com/WeatherWS/Weather.asmx' and web service soap action 'http://ws.cdyne.com/WeatherWS/GetWeatherInformation'
When send SOAP msg from file '/GetWeatherInformationRequest.xml'
Then verify that response is equal to file '/GetWeatherInformationResponse.xml'
Then verify that response is similar to file '/GetWeatherInformationSimilarResponse.xml'