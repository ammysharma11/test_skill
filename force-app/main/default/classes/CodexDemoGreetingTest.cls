@IsTest
private class CodexDemoGreetingTest {
    @IsTest
    static void greetsByName() {
        User runningUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
        System.runAs(runningUser) {
            System.assertEquals('Hello, Ana', CodexDemoGreeting.greet('Ana'), 'Greeting should include the supplied name.');
        }
    }

    @IsTest
    static void greetsWorldWhenBlank() {
        User runningUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
        System.runAs(runningUser) {
            System.assertEquals('Hello, world', CodexDemoGreeting.greet(''), 'Blank greetings should use the world fallback.');
        }
    }

    @IsTest
    static void farewellsWorldWhenNameIsNullOrEmpty() {
        User runningUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
        System.runAs(runningUser) {
            Test.startTest();
            String nullFarewell = CodexDemoGreeting.farewell(null);
            String emptyFarewell = CodexDemoGreeting.farewell('');
            Test.stopTest();

            System.assertEquals('Goodbye, world', nullFarewell, 'Null names should use the world fallback.');
            System.assertEquals('Goodbye, world', emptyFarewell, 'Empty names should use the world fallback.');
        }
    }

    @IsTest
    static void farewellsByName() {
        User runningUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
        System.runAs(runningUser) {
            Test.startTest();
            String farewell = CodexDemoGreeting.farewell('Ana');
            Test.stopTest();

            System.assertEquals('Goodbye, Ana', farewell, 'Farewell should include the supplied name.');
        }
    }
}
