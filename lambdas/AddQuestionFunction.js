var AWS = require("aws-sdk");


AWS.config.update({
  region: "us-east-1"/*,
  endpoint: "http://localhost:8000"*/
});

var docClient = new AWS.DynamoDB.DocumentClient();

// console.log("Querying for movies from 1985.");


/*var params = {
    TableName : ""/*,
    *KeyConditionExpression: "#question_id != :id",
   ExpressionAttributeNames:{
        "#question_id": "question_id"
    },
    ExpressionAttributeValues: {
        ":id": "1985"
    }
};*/


var table = "headsincloud_question";



exports.handler = async (event,  context) => {
    
    /*const formData = multipart.parse(event, true);
    console.log(formData);*/
    console.log("AddQuestionEvent: "+JSON.stringify(event));
    const newUUID = context.awsRequestId;
    let body = JSON.parse(event.body);
    var params = {
    TableName:table,
    Item:{
        "question_id": newUUID,
        "question_detail": body.question_detail,
        "question_summary": body.question_summary
}
};

console.log("Adding a new item...");
var result = await docClient.put(params).promise();

/*var result = await docClient.put(params, function(err, data) {
    if (err) {
        console.error("Unable to add item. Error JSON:", JSON.stringify(err, null, 2));
    } else {
        console.log("Added item:", JSON.stringify(data, null, 2));
    }
}).promise();*/


let response = {
        statusCode: 200,
        body: JSON.stringify(body)
    };
console.log("response: " + JSON.stringify(response));
return response;
};