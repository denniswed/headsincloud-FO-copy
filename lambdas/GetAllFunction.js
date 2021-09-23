var AWS = require("aws-sdk");

AWS.config.update({
    region: "us-east-1"
});

var docClient = new AWS.DynamoDB.DocumentClient();


var params = {
    TableName: "headsincloud_question"
};


exports.handler = async(event) => {

    let scanResults = [];
    let items;
    do {
        items = await docClient.scan(params).promise();
        items.Items.forEach((item) => scanResults.push(item));
        params.ExclusiveStartKey = items.LastEvaluatedKey;
    } while (typeof items.LastEvaluatedKey != "undefined");


    scanResults = scanResults.sort(function(a, b) {
        return a.question_summary.localeCompare(b.question_summary);
    });


    const response = {
        statusCode: 200,
        body: scanResults,
    };
    return response;
};
