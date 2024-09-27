# Salesforce Dyanmic SOQL in Flow
This class allows you to run a dynamic SOQL query in Flow, and have the resulting collection of SObjects returned in Flow.

## Example Queries:
* `SELECT Id, ContactId FROM User`
* `Select CaseNumber, Status, Id FROM Case WHERE Status = 'Open'`
* `Select Id from Opportunity LIMIT 5`
* `Select Id, Field2 FROM Custom_Object__c LIMTT 20`

## Flow Component
<img width="659" alt="image" src="https://github.com/user-attachments/assets/6a6a5861-536a-451b-acd2-7dadd47536a2">
