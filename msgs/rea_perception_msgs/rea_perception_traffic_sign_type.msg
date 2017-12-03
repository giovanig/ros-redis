# Traffig sign types
# Please refer to the enum header file for the various values of the "type" field.
uint32 type

# How sure we are of the classification
# VALUE NOT AVAILABLE FOR CES 2018
uint32 confidence

# Value depends on sign type.
# - Speed signs: Represents posted speed
# - stop/yield:  Represents how many ways (or 0 for not specified)
# - Other signs: Ignore field */
int32 value

# Array of text found on sign (example: street name), null terminated.
# VALUE NOT AVAILABLE FOR CES 2018
string text
