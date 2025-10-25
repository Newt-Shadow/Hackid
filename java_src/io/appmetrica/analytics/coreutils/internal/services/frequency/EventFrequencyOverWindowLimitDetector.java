package io.appmetrica.analytics.coreutils.internal.services.frequency;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
/* loaded from: classes2.dex */
public final class EventFrequencyOverWindowLimitDetector {

    /* renamed from: a  reason: collision with root package name */
    private long f17763a;

    /* renamed from: b  reason: collision with root package name */
    private int f17764b;

    /* renamed from: c  reason: collision with root package name */
    private final EventFrequencyStorage f17765c;

    /* renamed from: d  reason: collision with root package name */
    private final SystemTimeProvider f17766d = new SystemTimeProvider();

    public EventFrequencyOverWindowLimitDetector(long j10, int i10, EventFrequencyStorage eventFrequencyStorage) {
        this.f17763a = j10;
        this.f17764b = i10;
        this.f17765c = eventFrequencyStorage;
    }

    public final boolean detect(String str) {
        long longValue;
        int i10;
        long uptimeMillis = this.f17766d.uptimeMillis();
        EventFrequencyStorage eventFrequencyStorage = this.f17765c;
        Long windowStart = eventFrequencyStorage.getWindowStart(str);
        if (windowStart == null) {
            eventFrequencyStorage.putWindowStart(str, uptimeMillis);
            longValue = uptimeMillis;
        } else {
            longValue = windowStart.longValue();
        }
        long j10 = uptimeMillis - longValue;
        if (j10 >= 0 && j10 <= this.f17763a) {
            Integer windowOccurrencesCount = this.f17765c.getWindowOccurrencesCount(str);
            if (windowOccurrencesCount != null) {
                i10 = windowOccurrencesCount.intValue();
            } else {
                i10 = 0;
            }
            int i11 = i10 + 1;
            this.f17765c.putWindowOccurrencesCount(str, i11);
            if (i11 <= this.f17764b) {
                return false;
            }
            return true;
        }
        this.f17765c.putWindowStart(str, uptimeMillis);
        this.f17765c.putWindowOccurrencesCount(str, 1);
        return false;
    }

    public final synchronized void updateParameters(long j10, int i10) {
        this.f17763a = j10;
        this.f17764b = i10;
    }
}
