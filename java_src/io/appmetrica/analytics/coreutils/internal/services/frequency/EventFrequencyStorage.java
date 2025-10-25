package io.appmetrica.analytics.coreutils.internal.services.frequency;
/* loaded from: classes2.dex */
public interface EventFrequencyStorage {
    Integer getWindowOccurrencesCount(String str);

    Long getWindowStart(String str);

    void putWindowOccurrencesCount(String str, int i10);

    void putWindowStart(String str, long j10);
}
