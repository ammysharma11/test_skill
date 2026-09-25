public with sharing class CodexDemoGreeting {
    public static String greet(String name) {
        if (String.isBlank(name)) {
            return 'Hello, world';
        }
        return 'Hello, ' + name;
    }
}
