package io.sentry;

import java.time.Instant;
/* loaded from: classes2.dex */
public final class f5 extends y3 {

    /* renamed from: a  reason: collision with root package name */
    private final Instant f23109a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f5() {
        /*
            r1 = this;
            java.time.Instant r0 = io.sentry.e5.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.f5.<init>():void");
    }

    @Override // io.sentry.y3
    public long l() {
        long epochSecond;
        int nano;
        epochSecond = this.f23109a.getEpochSecond();
        long m10 = j.m(epochSecond);
        nano = this.f23109a.getNano();
        return m10 + nano;
    }

    public f5(Instant instant) {
        this.f23109a = instant;
    }
}
