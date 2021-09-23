var AWS = require("aws-sdk");


AWS.config.update({
  region: "us-east-1"/*,
  endpoint: "http://localhost:8000"*/
});

var docClient = new AWS.DynamoDB.DocumentClient();

var table = "headsincloud_question";

exports.handler = async (event, context) => {
   
    console.log("DeleteQuestionEvent: "+JSON.stringify(event));
    let body = JSON.parse(event.body);
    const questionId = body.question_id;
    let deleteSuccessful = false;
    if (questionId) {
        var params = {
            TableName: table,
            Key: {
                "question_id": questionId
            }
        };

        console.log("Deleting question where id = " + questionId);
        let result = await docClient.delete(params).promise();
        deleteSuccessful = true;
    }
    
    let response = {
        statusCode: 200,
        body: JSON.stringify({"success": deleteSuccessful})
    };
    console.log("response: " + JSON.stringify(response));
    return response;
};