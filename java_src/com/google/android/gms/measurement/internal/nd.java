package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class nd {

    /* renamed from: a  reason: collision with root package name */
    private final pd f7808a;

    /* renamed from: b  reason: collision with root package name */
    private int f7809b = 1;

    /* renamed from: c  reason: collision with root package name */
    private long f7810c = d();

    public nd(pd pdVar) {
        this.f7808a = pdVar;
    }

    private final long d() {
        pd pdVar = this.f7808a;
        n5.q.k(pdVar);
        long longValue = ((Long) c5.f7378v.b(null)).longValue();
        long longValue2 = ((Long) c5.f7380w.b(null)).longValue();
        for (int i10 = 1; i10 < this.f7809b; i10++) {
            longValue += longValue;
            if (longValue >= longValue2) {
                break;
            }
        }
        return pdVar.f().currentTimeMillis() + Math.min(longValue, longValue2);
    }

    public final void a() {
        this.f7809b++;
        this.f7810c = d();
    }

    public final boolean b() {
        if (this.f7808a.f().currentTimeMillis() >= this.f7810c) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ long c() {
        return this.f7810c;
    }
}
