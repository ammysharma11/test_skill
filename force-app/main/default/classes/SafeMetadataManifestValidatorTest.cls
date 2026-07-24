/**
 * @description Tests for SafeMetadataManifestValidator.
 */
@IsTest
private class SafeMetadataManifestValidatorTest {
    /**
     * @description Confirms that the approved metadata types are accepted.
     */
    @IsTest
    static void validateManifestTypes_ApprovedTypes_DoesNotThrow() {
        System.runAs(new User(Id = UserInfo.getUserId())) {
            List<String> approvedTypes = new List<String>{
                'ApexClass',
                'ApexTrigger',
                'CustomField',
                'CustomObject',
                'Flow',
                'ValidationRule'
            };

            Test.startTest();
            SafeMetadataManifestValidator.validateManifestTypes(approvedTypes);
            Test.stopTest();

            System.assertEquals(6, approvedTypes.size(), 'All approved metadata types should be validated.');
        }
    }

    /**
     * @description Confirms that an excluded metadata type is rejected.
     */
    @IsTest
    static void validateManifestTypes_ExcludedType_ThrowsException() {
        System.runAs(new User(Id = UserInfo.getUserId())) {
            Boolean exceptionThrown = false;
            List<String> unsafeTypes = new List<String>{
                'ApexClass',
                'ApexTrigger',
                'CustomField',
                'CustomObject',
                'Flow',
                'NamedCredential'
            };

            Test.startTest();
            try {
                SafeMetadataManifestValidator.validateManifestTypes(unsafeTypes);
            } catch (SafeMetadataManifestValidator.ManifestValidationException exceptionValue) {
                exceptionThrown = true;
            }
            Test.stopTest();

            System.assertEquals(
                true,
                exceptionThrown,
                'An excluded metadata type should be rejected by the safe snapshot validator.'
            );
        }
    }
}
