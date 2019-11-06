# Travel Expenses

## Requirement

1.	Your task is to cover simple Travel Expenses.
2.	You need a document where you can enter destination and costs.
3.	Document should have several types of cost (mileage, road cost, accommodation, time).
4.	Types of cost must be settable. Defaults must be created with wizard.
5.	Some of the costs are reimbursable.
6.	On the end they must be posted to the employee connected vendor.
7.	If vendor does not exists it needs to be created when posting document.
8.	After posting document the data should be moved to readonly tables.
9.	Your vendor entries should be marked with extra field that shows travel expenses.

## Design

### Data Design

- Travel Header
- Travel Line
- Posted Travel Header
- Posted Travel Line
- Setup
- Travel Cost
- Travel Locations
- Travel Transportation


### Data Flow

When document is posted by Accountant the flowing should be done:
- check if vendor exists. If not then create Vendor out off Employee based of default Setup.
- Create General Journal Line for each reimbursable cost.
- Post the journal. OnAfterPost General Journal Line update travel expense Flag. 


## Userinterface

### User as a Traveler

User will open travel order and write following info:
    - Employee No.
    - Start Date
    - End Date
    - Destination
    - Transportation Type
After document is released, approver must approve or reject the document

### User as a Approver
Approver will approve or reject document.
If document is rejected we will test the comment field.

### User as a Traveler when finished
When traveler is back he/she will enter costs that occurred on this travel.

### User as a Accountant

Accountant will opened released document and he/she will check if the document is ok. Then he/she will try to post document.

