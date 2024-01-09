function doGet(e) {
  var functionName = e.parameter.functionName || "defaultFunction";
  
  if (functionName === "defaultFunction") {
    var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Sheet1");
    var data = sheet.getRange("L:L").getValues();
    
    // Filter out empty values
    var nonEmptyValues = data.flat().filter(function(value) {
      return value !== "";
    });
  
    // Join the non-empty values with line breaks
    var result = nonEmptyValues.join("\n");
    
    // Output the result
    Logger.log(result);
  
    return ContentService.createTextOutput(result);
  } else {
    return ContentService.createTextOutput("Invalid function name");
  }
}
