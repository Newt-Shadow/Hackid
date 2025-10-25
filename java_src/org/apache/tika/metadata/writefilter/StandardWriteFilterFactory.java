package org.apache.tika.metadata.writefilter;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class StandardWriteFilterFactory implements MetadataWriteFilterFactory {
    public static int DEFAULT_MAX_FIELD_SIZE = 102400;
    public static int DEFAULT_MAX_KEY_SIZE = 1024;
    public static int DEFAULT_MAX_VALUES_PER_FIELD = 10;
    public static int DEFAULT_TOTAL_ESTIMATED_BYTES = 10485760;
    private Set<String> excludeFields;
    private boolean includeEmpty;
    private Set<String> includeFields;
    private int maxFieldSize;
    private int maxKeySize;
    private int maxTotalEstimatedBytes;
    private int maxValuesPerField;

    public StandardWriteFilterFactory() {
        Set<String> set = Collections.EMPTY_SET;
        this.includeFields = set;
        this.excludeFields = set;
        this.maxKeySize = DEFAULT_MAX_KEY_SIZE;
        this.maxFieldSize = DEFAULT_MAX_FIELD_SIZE;
        this.maxTotalEstimatedBytes = DEFAULT_TOTAL_ESTIMATED_BYTES;
        this.maxValuesPerField = DEFAULT_MAX_VALUES_PER_FIELD;
        this.includeEmpty = false;
    }

    public Set<String> getIncludeFields() {
        return this.includeFields;
    }

    public int getMaxFieldSize() {
        return this.maxFieldSize;
    }

    public int getMaxKeySize() {
        return this.maxKeySize;
    }

    public int getMaxTotalEstimatedBytes() {
        return this.maxTotalEstimatedBytes;
    }

    public int getMaxValuesPerField() {
        return this.maxValuesPerField;
    }

    public boolean isIncludeEmpty() {
        return this.includeEmpty;
    }

    @Override // org.apache.tika.metadata.writefilter.MetadataWriteFilterFactory
    public MetadataWriteFilter newInstance() {
        if (this.maxFieldSize >= 0) {
            if (this.maxValuesPerField >= 1) {
                if (this.maxTotalEstimatedBytes >= 0) {
                    return new StandardWriteFilter(this.maxKeySize, this.maxFieldSize, this.maxTotalEstimatedBytes, this.maxValuesPerField, this.includeFields, this.excludeFields, this.includeEmpty);
                }
                throw new IllegalArgumentException("max estimated size must be > 0");
            }
            throw new IllegalArgumentException("maxValuesPerField must be > 0");
        }
        throw new IllegalArgumentException("maxFieldSize must be > 0");
    }

    public void setExcludeFields(List<String> list) {
        ConcurrentHashMap.KeySetView newKeySet = ConcurrentHashMap.newKeySet(list.size());
        newKeySet.addAll(list);
        this.excludeFields = Collections.unmodifiableSet(newKeySet);
    }

    public void setIncludeEmpty(boolean z10) {
        this.includeEmpty = z10;
    }

    public void setIncludeFields(List<String> list) {
        ConcurrentHashMap.KeySetView newKeySet = ConcurrentHashMap.newKeySet(list.size());
        newKeySet.addAll(list);
        this.includeFields = Collections.unmodifiableSet(newKeySet);
    }

    public void setMaxFieldSize(int i10) {
        this.maxFieldSize = i10;
    }

    public void setMaxKeySize(int i10) {
        this.maxKeySize = i10;
    }

    public void setMaxTotalEstimatedBytes(int i10) {
        this.maxTotalEstimatedBytes = i10;
    }

    public void setMaxValuesPerField(int i10) {
        this.maxValuesPerField = i10;
    }

    public String toString() {
        Set<String> set = this.includeFields;
        int i10 = this.maxKeySize;
        int i11 = this.maxFieldSize;
        int i12 = this.maxTotalEstimatedBytes;
        int i13 = this.maxValuesPerField;
        boolean z10 = this.includeEmpty;
        return "StandardWriteFilterFactory{includeFields=" + set + ", maxKeySize=" + i10 + ", maxFieldSize=" + i11 + ", maxTotalEstimatedBytes=" + i12 + ", maxValuesPerField=" + i13 + ", includeEmpty=" + z10 + "}";
    }
}
