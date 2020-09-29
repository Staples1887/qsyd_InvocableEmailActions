/**
 *      
     Author:         Paul Lucas
     Company:        Salesforce
     Description:    qsyd_InvocableEmailBaseTest
     Date:           18-Nov-2018

     History:
     When           Who                 What

     TODO:
 */

@IsTest
public with sharing class qsyd_InvocableEmailBaseTest {

    private static final String ACCOUNT = 'Account';
    private static final String CONTACT = 'Contact';
    private static final String USER = 'User';



    Private Static final String CASE_EXAMPLE = '5006M00001jOgfCQAS';
    Private Static final String EMAIL_EXAMPLE = '00X6M000002LB6MUAW';
    Private Static final String ORGWIDEEMAILADDRESS_EXAMPLE = '0D220000000PCb2';


    @TestSetup
    private static void setupTestData() {
    }

    @IsTest
    private static void initialiseSetupTestData() {

    }

    @IsTest
    private static void given_staticMethodsAreCalled_when_parametersArePassed_then_parametersArePassedThrough() {

        initialiseSetupTestData();

        Test.startTest();

        qsyd_InvocableEmailBase.newEmailMessage(false);
        qsyd_InvocableEmailBase.setFileAttachments(new List<Messaging.EmailFileAttachment>());
        qsyd_InvocableEmailBase.setReferences('example email thread reference');
        qsyd_InvocableEmailBase.setOrgWideEmailAddressId(ORGWIDEEMAILADDRESS_EXAMPLE);

        Test.stopTest();
    }

}