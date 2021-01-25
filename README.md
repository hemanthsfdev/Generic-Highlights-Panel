# Use Cases
* Ever wanted to show recommended modules/learnings on opportunity or case record page?
* Show the assigned modules/Learnings with due date in the Home page.
* Upcoming demos with Demo date
* You can now show recommended offers at checkout/home.
* Quick Links
* Similar Opportunities/Accounts
* Recommendations and many more.

![image](https://user-images.githubusercontent.com/67360339/105693230-7e295a00-5f25-11eb-87cb-1993a7062490.png)

<img width="1665" alt="Generic Highlights Panel" src="https://user-images.githubusercontent.com/67360339/105693556-dfe9c400-5f25-11eb-8486-c36447fded52.png">

# Setup
*Step 1:*
You can also install the component from below package:
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t4x000000ldhz

*Step 2:*
Navigate to Setup →Home → Generic Highlight object → Category and add a new category picklist value related to the data you would like to display in the component.

*Step 3:*
Create data you would like to display in the component.
Navigate to ‘Generic Highlights’ Tab and click New to add data.
Fill the appropriate fields:
a) Title - Add title of the highlight/recommendation you are going to display in the component.
b) Navigation Link - Enter the link you would like to redirect on click of the title.
c) Category - Select the above created category
d) Description - Enter the description of the highlight
e) Date - If you would like to see the date in the highlight/recommendation add the date in this field
f) Icon - If the image source for the highlight is a custom image or icon upload it here.
g) Image URL - If the image source for the highlight is an external image then add the image url here.
Repeat the step and add all the required records in the object.

*Step 4:*
Navigate to Home or Record page or Community page
Drag and drop the “Generic Highlights Panel” component in the layout
Select the required Design attributes:
a) Title - Heading for the component
b) Category - Select the appropriate category (Based on the selected category the records/data will be fetched)
c) Show Dates - Select the option if you would like to see the dates in the component.
d) Show Description - Select the option if you would like to see the description as second line in the component.
e) Date Label - Enter the date label you would like to have in the component
f) Image Source - Select one from RichText from Object, Image Link from Object or SLDS ICON
g) SLDS Icon Name - If you are selecting SLDS ICON as image source please mention the icon name in this attribute Ex: standard:account


*Developer Notes:*
LWC Component: DeResourcesMaster
Apex Classes: DE_ResourcesDemo, DE_ResourceCategoryPicklist
Object Name : Genric Highlights(DE_ResourceLink__c)


