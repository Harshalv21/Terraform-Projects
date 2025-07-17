exports.handler = async (event) => {
  console.log("✅ Lambda triggered by EventBridge!");
  return {
    statusCode: 200,
    body: JSON.stringify("Lambda executed successfully!"),
  };
};
