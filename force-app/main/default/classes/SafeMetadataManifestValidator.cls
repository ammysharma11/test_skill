/**
 * @description Validates the metadata types permitted in the safe snapshot manifest.
 */
public with sharing class SafeMetadataManifestValidator {
    private static final Set<String> REQUIRED_METADATA_TYPES = new Set<String>{
        'ApexClass',
        'ApexTrigger',
        'CustomField',
        'CustomObject',
        'Flow',
        'ValidationRule'
    };

    /**
     * @description Verifies that manifest types exactly match the approved safe snapshot scope.
     * @param manifestTypes Metadata type names declared by a snapshot manifest.
     * @throws ManifestValidationException When the supplied types are missing, duplicated, or unapproved.
     */
    public static void validateManifestTypes(List<String> manifestTypes) {
        if (manifestTypes == null || manifestTypes.isEmpty()) {
            throw new ManifestValidationException('The safe snapshot manifest must declare metadata types.');
        }

        Set<String> actualTypes = new Set<String>();
        for (String manifestType : manifestTypes) {
            if (String.isBlank(manifestType)) {
                throw new ManifestValidationException('Manifest metadata types must not be blank.');
            }
            actualTypes.add(manifestType.trim());
        }

        if (actualTypes.size() != manifestTypes.size()) {
            throw new ManifestValidationException('Manifest metadata types must not contain duplicates.');
        }

        if (!actualTypes.equals(REQUIRED_METADATA_TYPES)) {
            throw new ManifestValidationException(
                'Manifest metadata types must exactly match the approved safe snapshot scope.'
            );
        }
    }

    /**
     * @description Represents a safe metadata manifest validation failure.
     */
    public class ManifestValidationException extends Exception {
    }
}
