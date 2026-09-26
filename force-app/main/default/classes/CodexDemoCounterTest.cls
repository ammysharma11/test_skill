/**
 * @description Tests for CodexDemoCounter.
 */
@IsTest
private with sharing class CodexDemoCounterTest {

    @IsTest
    static void addOne_withPositiveValue_returnsIncrementedValue() {
        System.runAs(new User(Id = UserInfo.getUserId())) {
            Test.startTest();
            Decimal result = CodexDemoCounter.addOne(41);
            Test.stopTest();

            System.assertEquals(42, result, 'A positive value should be incremented by one.');
        }
    }

    @IsTest
    static void addOne_withNegativeValue_returnsIncrementedValue() {
        System.runAs(new User(Id = UserInfo.getUserId())) {
            Test.startTest();
            Decimal result = CodexDemoCounter.addOne(-2.5);
            Test.stopTest();

            System.assertEquals(-1.5, result, 'A negative value should be incremented by one.');
        }
    }
}
