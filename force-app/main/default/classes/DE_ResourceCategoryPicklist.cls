global class DE_ResourceCategoryPicklist extends VisualEditor.DynamicPickList{
    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Home', 'Home');
        return defaultValue;
    }
    global override VisualEditor.DynamicPickListRows getValues() {
        /*VisualEditor.DataRow value1 = new VisualEditor.DataRow('red', 'RED');
        VisualEditor.DataRow value2 = new VisualEditor.DataRow('yellow', 'YELLOW');
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();
        myValues.addRow(value1);
        myValues.addRow(value2);*/

        Schema.DescribeFieldResult fieldResult = DE_ResourceLink__c.Category__c.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();
        for( Schema.PicklistEntry f : ple)
        {
            //options.add(new SelectOption(f.getLabel(), f.getValue()));
            VisualEditor.DataRow value1 = new VisualEditor.DataRow(f.getLabel(), f.getValue());
            myValues.addRow(value1);
        }       
   //return options;
        return myValues;
    }
}
