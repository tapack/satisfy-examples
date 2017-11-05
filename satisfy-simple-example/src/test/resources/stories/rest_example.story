Scenario: use get method and check status code on jsonplaceholder.typicode.com
When use GET '<url>' url
Then verify status code '<response>' in REST response

Examples:
|url|response|
|http://jsonplaceholder.typicode.com/users|200|
|http://jsonplaceholder.typicode.com/persons|404|

Scenario: use get method with params and check response on jsonplaceholder.typicode.com
When use GET 'http://jsonplaceholder.typicode.com/comments' with params 'postId=101'
Then verify REST response equals to '[]' in response
