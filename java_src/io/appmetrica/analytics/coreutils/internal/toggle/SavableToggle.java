package io.appmetrica.analytics.coreutils.internal.toggle;

import io.appmetrica.analytics.coreapi.internal.data.Savable;
import io.appmetrica.analytics.coreapi.internal.data.Updatable;
/* loaded from: classes2.dex */
public final class SavableToggle extends SimpleThreadSafeToggle implements Updatable<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    private final Savable f17782d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SavableToggle(java.lang.String r4, io.appmetrica.analytics.coreapi.internal.data.Savable<java.lang.Boolean> r5) {
        /*
            r3 = this;
            java.lang.Object r0 = r5.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "[SavableToggle - "
            r1.<init>(r2)
            r1.append(r4)
            r4 = 93
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r3.<init>(r0, r4)
            r3.f17782d = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.coreutils.internal.toggle.SavableToggle.<init>(java.lang.String, io.appmetrica.analytics.coreapi.internal.data.Savable):void");
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Updatable
    public /* bridge */ /* synthetic */ void update(Boolean bool) {
        update(bool.booleanValue());
    }

    public void update(boolean z10) {
        updateState(z10);
        this.f17782d.setValue(Boolean.valueOf(getActualState()));
    }
}
