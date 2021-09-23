var AWS = require("aws-sdk");


AWS.config.update({
    region: "us-east-1"
    /*,
      endpoint: "http://localhost:8000"*/
});

var docClient = new AWS.DynamoDB.DocumentClient();

var table = "headsincloud_question";


exports.handler = async(event) => {

    // example request body: { "question_id": "b6e86280-0a5c-4094-b38c-7e840878a390", "answer_id": 0 }
    let body = JSON.parse(event.body);


    var params = {
        TableName: table,
        Key: {
            "question_id": body.question_id
        }
    }

    let questionObj = await docClient.get(params).promise();

    // console.log(updatedObj.Item.answer);

    let scoreIncremented = false;
    
    let answersExists = Array.isArray(questionObj.Item.answer) && questionObj.Item.answer.length;
    let answerArr = null;
    if (answersExists) {
        answerArr = questionObj.Item.answer;
        let answer = questionObj.Item.answer.find(a => a.id == body.answer_id);
        if (answer) {
            answer.score += 1;
            scoreIncremented = true;
        }
        else {
            console.log("Answer " + body.answer_id + " does not exist for question " + body.question_id);
        }
    }
    else {
        console.log("Question " + body.question_id + " does not exist.");
    }

    let upvoteSuccessful = false;
    if (scoreIncremented) {
        let updateRetValue = "UPDATED_OLD";
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
        upvoteSuccessful = true;
    }

    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify({"success": upvoteSuccessful}),
    };
    return response;
};
