package org.apache.tika.metadata.writefilter;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public interface MetadataWriteFilter extends Serializable {
    void add(String str, String str2, Map<String, String[]> map);

    void filterExisting(Map<String, String[]> map);

    void set(String str, String str2, Map<String, String[]> map);
}
