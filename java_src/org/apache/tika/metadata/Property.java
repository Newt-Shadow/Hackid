package org.apache.tika.metadata;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class Property implements Comparable<Property> {
    private static final Map<String, Property> PROPERTIES = new ConcurrentHashMap();
    private final Set<String> choices;
    private final boolean internal;
    private final String name;
    private final Property primaryProperty;
    private final PropertyType propertyType;
    private final Property[] secondaryExtractProperties;
    private final ValueType valueType;

    /* loaded from: classes2.dex */
    public enum PropertyType {
        SIMPLE,
        STRUCTURE,
        BAG,
        SEQ,
        ALT,
        COMPOSITE
    }

    /* loaded from: classes2.dex */
    public enum ValueType {
        BOOLEAN,
        OPEN_CHOICE,
        CLOSED_CHOICE,
        DATE,
        INTEGER,
        LOCALE,
        MIME_TYPE,
        PROPER_NAME,
        RATIONAL,
        REAL,
        TEXT,
        URI,
        URL,
        XPATH,
        PROPERTY
    }

    private Property(String str, boolean z10, PropertyType propertyType, ValueType valueType, String[] strArr, Property property, Property[] propertyArr) {
        this.name = str;
        this.internal = z10;
        this.propertyType = propertyType;
        this.valueType = valueType;
        if (strArr != null) {
            this.choices = Collections.unmodifiableSet(new HashSet(Arrays.asList((String[]) strArr.clone())));
        } else {
            this.choices = null;
        }
        if (property != null) {
            this.primaryProperty = property;
            this.secondaryExtractProperties = propertyArr;
            return;
        }
        this.primaryProperty = this;
        this.secondaryExtractProperties = null;
        Map<String, Property> map = PROPERTIES;
        synchronized (map) {
            map.put(str, this);
        }
    }

    public static Property composite(Property property, Property[] propertyArr) {
        String[] strArr;
        if (property != null) {
            if (property.getPropertyType() != PropertyType.COMPOSITE) {
                if (propertyArr != null) {
                    for (Property property2 : propertyArr) {
                        if (property2.getPropertyType() == PropertyType.COMPOSITE) {
                            throw new PropertyTypeException(property2.getPropertyType());
                        }
                    }
                }
                if (property.getChoices() != null) {
                    strArr = (String[]) property.getChoices().toArray(new String[0]);
                } else {
                    strArr = null;
                }
                return new Property(property.getName(), property.isInternal(), PropertyType.COMPOSITE, ValueType.PROPERTY, strArr, property, propertyArr);
            }
            throw new PropertyTypeException(property.getPropertyType());
        }
        throw new NullPointerException("primaryProperty must not be null");
    }

    public static Property externalBoolean(String str) {
        return new Property(str, false, ValueType.BOOLEAN);
    }

    public static Property externalBooleanSeq(String str) {
        return new Property(str, false, PropertyType.SEQ, ValueType.BOOLEAN);
    }

    public static Property externalClosedChoise(String str, String... strArr) {
        return new Property(str, false, ValueType.CLOSED_CHOICE, strArr);
    }

    public static Property externalDate(String str) {
        return new Property(str, false, ValueType.DATE);
    }

    public static Property externalInteger(String str) {
        return new Property(str, false, ValueType.INTEGER);
    }

    public static Property externalOpenChoise(String str, String... strArr) {
        return new Property(str, false, ValueType.OPEN_CHOICE, strArr);
    }

    public static Property externalReal(String str) {
        return new Property(str, false, ValueType.REAL);
    }

    public static Property externalRealSeq(String str) {
        return new Property(str, false, PropertyType.SEQ, ValueType.REAL);
    }

    public static Property externalText(String str) {
        return new Property(str, false, ValueType.TEXT);
    }

    public static Property externalTextBag(String str) {
        return new Property(str, false, PropertyType.BAG, ValueType.TEXT);
    }

    public static Property get(String str) {
        return PROPERTIES.get(str);
    }

    public static SortedSet<Property> getProperties(String str) {
        TreeSet treeSet = new TreeSet();
        String str2 = str + ":";
        Map<String, Property> map = PROPERTIES;
        synchronized (map) {
            for (Map.Entry<String, Property> entry : map.entrySet()) {
                if (entry.getKey().startsWith(str2)) {
                    treeSet.add(entry.getValue());
                }
            }
        }
        return treeSet;
    }

    public static PropertyType getPropertyType(String str) {
        Property property = PROPERTIES.get(str);
        if (property != null) {
            return property.getPropertyType();
        }
        return null;
    }

    public static Property internalBoolean(String str) {
        return new Property(str, true, ValueType.BOOLEAN);
    }

    public static Property internalClosedChoise(String str, String... strArr) {
        return new Property(str, true, ValueType.CLOSED_CHOICE, strArr);
    }

    public static Property internalDate(String str) {
        return new Property(str, true, ValueType.DATE);
    }

    public static Property internalDateBag(String str) {
        return new Property(str, true, PropertyType.BAG, ValueType.DATE);
    }

    public static Property internalInteger(String str) {
        return new Property(str, true, ValueType.INTEGER);
    }

    public static Property internalIntegerSequence(String str) {
        return new Property(str, true, PropertyType.SEQ, ValueType.INTEGER);
    }

    public static Property internalOpenChoise(String str, String... strArr) {
        return new Property(str, true, ValueType.OPEN_CHOICE, strArr);
    }

    public static Property internalRational(String str) {
        return new Property(str, true, ValueType.RATIONAL);
    }

    public static Property internalReal(String str) {
        return new Property(str, true, ValueType.REAL);
    }

    public static Property internalText(String str) {
        return new Property(str, true, ValueType.TEXT);
    }

    public static Property internalTextBag(String str) {
        return new Property(str, true, PropertyType.BAG, ValueType.TEXT);
    }

    public static Property internalURI(String str) {
        return new Property(str, true, ValueType.URI);
    }

    public boolean equals(Object obj) {
        if ((obj instanceof Property) && this.name.equals(((Property) obj).name)) {
            return true;
        }
        return false;
    }

    public Set<String> getChoices() {
        return this.choices;
    }

    public String getName() {
        return this.name;
    }

    public Property getPrimaryProperty() {
        return this.primaryProperty;
    }

    public Property[] getSecondaryExtractProperties() {
        return this.secondaryExtractProperties;
    }

    public ValueType getValueType() {
        return this.valueType;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public boolean isExternal() {
        return !this.internal;
    }

    public boolean isInternal() {
        return this.internal;
    }

    public boolean isMultiValuePermitted() {
        PropertyType propertyType = this.propertyType;
        if (propertyType != PropertyType.BAG && propertyType != PropertyType.SEQ && propertyType != PropertyType.ALT) {
            if (propertyType == PropertyType.COMPOSITE) {
                return this.primaryProperty.isMultiValuePermitted();
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(Property property) {
        return this.name.compareTo(property.name);
    }

    public PropertyType getPropertyType() {
        return this.propertyType;
    }

    private Property(String str, boolean z10, PropertyType propertyType, ValueType valueType, String[] strArr) {
        this(str, z10, propertyType, valueType, strArr, null, null);
    }

    private Property(String str, boolean z10, ValueType valueType, String[] strArr) {
        this(str, z10, PropertyType.SIMPLE, valueType, strArr);
    }

    private Property(String str, boolean z10, ValueType valueType) {
        this(str, z10, PropertyType.SIMPLE, valueType, null);
    }

    private Property(String str, boolean z10, PropertyType propertyType, ValueType valueType) {
        this(str, z10, propertyType, valueType, null);
    }
}
