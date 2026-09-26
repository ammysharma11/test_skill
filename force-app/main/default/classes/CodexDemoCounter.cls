/**
 * @description Provides simple numeric counter operations.
 */
public with sharing class CodexDemoCounter {

    /**
     * @description Returns the supplied number incremented by one.
     * @param numberValue The number to increment.
     * @return The supplied number plus one.
     */
    public static Decimal addOne(Decimal numberValue) {
        return numberValue + 1;
    }
}
