/**
 * @description Provides simple greetings and farewells for supplied names.
 */
public with sharing class CodexDemoGreeting {
    /**
     * @description Returns a greeting for a name, or a generic greeting when blank.
     * @param name The name to greet.
     * @return A greeting message.
     */
    public static String greet(String name) {
        if (String.isBlank(name)) {
            return 'Hello, world';
        }
        return 'Hello, ' + name;
    }

    /**
     * @description Returns a farewell for a name, or a generic farewell when no name is supplied.
     * @param name The name to farewell.
     * @return A farewell message.
     */
    public static String farewell(String name) {
        if (name == null || name == '') {
            return 'Goodbye, world';
        }
        return 'Goodbye, ' + name;
    }
}
