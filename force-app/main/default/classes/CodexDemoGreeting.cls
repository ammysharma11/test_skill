// Provides a simple greeting for the supplied name.
public with sharing class CodexDemoGreeting {
    // Combo 2: reviewed.
    public static String greet(String name) {
        if (String.isBlank(name)) {
            return 'Hello, world';
        }
        return 'Hello, ' + name;
    }
}
