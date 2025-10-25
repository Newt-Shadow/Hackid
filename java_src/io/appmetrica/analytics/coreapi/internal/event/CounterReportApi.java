package io.appmetrica.analytics.coreapi.internal.event;

import java.util.Map;
/* loaded from: classes2.dex */
public interface CounterReportApi {
    int getBytesTruncated();

    int getCustomType();

    Map<String, byte[]> getExtras();

    String getName();

    int getType();

    String getValue();

    byte[] getValueBytes();

    void setBytesTruncated(int i10);

    void setCustomType(int i10);

    void setExtras(Map<String, byte[]> map);

    void setName(String str);

    void setType(int i10);

    void setValue(String str);

    void setValueBytes(byte[] bArr);
}
