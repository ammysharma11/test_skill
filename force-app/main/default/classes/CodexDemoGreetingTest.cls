@IsTest
private class CodexDemoGreetingTest {
    @IsTest
    // Combo 2: reviewed.
    static void greetsByName() {
        System.assertEquals('Hello, Ana', CodexDemoGreeting.greet('Ana'));
    }

    @IsTest
    static void greetsWorldWhenBlank() {
        System.assertEquals('Hello, world', CodexDemoGreeting.greet(''));
    }
}
