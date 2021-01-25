import { LightningElement, api, wire } from 'lwc';
import getResources from '@salesforce/apex/DE_ResourcesDemo.getResources';

export default class DeResourcesMaster extends LightningElement {

    @api category;
    @api heading;
    @api showDate=false;
    
    @api iconName;
    @api dateLabel;
    @api imageSource;
    @api showDesc =false;

    showImg;
    showIcons;
    showImgLink;
    
    resources=[];
    
    

    @wire (getResources, {category:'$category'})
    wiredResources({data,error}){
        if(data){
            console.log('data'+data);
            this.resources = data;
        } else if(error){
            console.log('error'+JSON.stringify(error));
            this.resources = [];
            throw new Error('Failed to retrieve session');
        }
    }
    curDate = new Date();
    morDate = new Date();

    connectedCallback(){
        //this.showDesc = true;
        this.morDate.setDate(this.morDate.getDate()+10);
        console.log('Connected Callback'+this.imageSource);
        if(this.imageSource=='RichText from Object')
            this.showImg = true;
        else if(this.imageSource=='SLDS ICON')
            this.showIcons = true;
        else if(this.imageSource=='Image Link from Object')
            this.showImgLink = true;
    }
}