package io.appmetrica.analytics.coreutils.internal.services.frequency;

import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public final class InMemoryEventFrequencyStorage implements EventFrequencyStorage {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap f17767a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap f17768b = new LinkedHashMap();

    @Override // io.appmetrica.analytics.coreutils.internal.services.frequency.EventFrequencyStorage
    public Integer getWindowOccurrencesCount(String str) {
        return (Integer) this.f17768b.get(str);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.services.frequency.EventFrequencyStorage
    public Long getWindowStart(String str) {
        return (Long) this.f17767a.get(str);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.services.frequency.EventFrequencyStorage
    public void putWindowOccurrencesCount(String str, int i10) {
        this.f17768b.put(str, Integer.valueOf(i10));
    }

    @Override // io.appmetrica.analytics.coreutils.internal.services.frequency.EventFrequencyStorage
    public void putWindowStart(String str, long j10) {
        this.f17767a.put(str, Long.valueOf(j10));
    }
}
