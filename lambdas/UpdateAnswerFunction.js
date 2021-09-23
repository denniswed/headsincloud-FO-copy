var AWS = require("aws-sdk");


AWS.config.update({
    region: "us-east-1"
    /*,
      endpoint: "http://localhost:8000"*/
});

var docClient = new AWS.DynamoDB.DocumentClient();

var table = "headsincloud_question";


exports.handler = async(event) => {

    let body = JSON.parse(event.body);


    var params = {
        TableName: table,
        Key: {
            "question_id": body.question_id
        }
    }

    let updatedObj = await docClient.get(params).promise();

    // console.log(updatedObj.Item.answer);


    let answerArr = [];
    let answerExists = Array.isArray(updatedObj.Item.answer) && updatedObj.Item.answer.length;
    if (answerExists) {
        updatedObj.Item.answer.push({"id": updatedObj.Item.answer.length, "answerText": body.answer, "score": 0, "accepted": false });
        answerArr = updatedObj.Item.answer;
    }
    else {
        answerArr.push({"id": 0, "answerText": body.answer, "score": 0, "accepted": false });
    }

    let updateRetValue = answerExists ? "UPDATED_OLD" : "UPDATED_NEW";


    params = {
        TableName: table,
        Key: {
            "question_id": body.question_id
        },
        UpdateExpression: "set answer = :val",
        ExpressionAttributeValues: {
            ":val": answerArr
        },
        ReturnValues: updateRetValue
    };



    console.log("Updating the item...");
    let updateStatus = await docClient.update(params).promise();

    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify(updateStatus),
    };
    return response;
};
