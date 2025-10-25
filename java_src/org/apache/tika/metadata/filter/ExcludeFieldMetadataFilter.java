package org.apache.tika.metadata.filter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.tika.config.Field;
import org.apache.tika.metadata.Metadata;
/* loaded from: classes2.dex */
public class ExcludeFieldMetadataFilter extends MetadataFilter {
    private final Set<String> excludeSet;

    public ExcludeFieldMetadataFilter() {
        this(new HashSet());
    }

    @Override // org.apache.tika.metadata.filter.MetadataFilter
    public void filter(Metadata metadata) {
        for (String str : this.excludeSet) {
            metadata.remove(str);
        }
    }

    public List<String> getExclude() {
        return new ArrayList(this.excludeSet);
    }

    @Field
    public void setExclude(List<String> list) {
        this.excludeSet.addAll(list);
    }

    public ExcludeFieldMetadataFilter(Set<String> set) {
        this.excludeSet = set;
    }
}
