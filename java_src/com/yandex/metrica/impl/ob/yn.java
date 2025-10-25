package com.yandex.metrica.impl.ob;

import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class yn<D> implements wn<D> {

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<D> f14027a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14028b;

    /* renamed from: c  reason: collision with root package name */
    private final dc.d f14029c;

    /* renamed from: d  reason: collision with root package name */
    final long f14030d;

    /* renamed from: e  reason: collision with root package name */
    private D f14031e;

    /* renamed from: f  reason: collision with root package name */
    private int f14032f;

    /* renamed from: g  reason: collision with root package name */
    private long f14033g;

    public yn(Comparator<D> comparator, dc.d dVar, int i10, long j10) {
        this.f14027a = comparator;
        this.f14028b = i10;
        this.f14029c = dVar;
        this.f14030d = TimeUnit.SECONDS.toMillis(j10);
    }

    private void a() {
        this.f14032f = 0;
        this.f14033g = this.f14029c.elapsedRealtime();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    @Override // com.yandex.metrica.impl.ob.wn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.zn<D> get(D r8) {
        /*
            r7 = this;
            D r0 = r7.f14031e
            r1 = 1
            r2 = 0
            if (r0 != r8) goto L8
        L6:
            r8 = r2
            goto L16
        L8:
            java.util.Comparator<D> r3 = r7.f14027a
            int r0 = r3.compare(r0, r8)
            if (r0 != 0) goto L13
            r7.f14031e = r8
            goto L6
        L13:
            r7.f14031e = r8
            r8 = r1
        L16:
            if (r8 == 0) goto L25
            r7.a()
            com.yandex.metrica.impl.ob.zn r8 = new com.yandex.metrica.impl.ob.zn
            com.yandex.metrica.impl.ob.zn$a r0 = com.yandex.metrica.impl.ob.zn.a.NEW
            D r1 = r7.f14031e
            r8.<init>(r0, r1)
            return r8
        L25:
            int r8 = r7.f14032f
            int r8 = r8 + r1
            r7.f14032f = r8
            int r0 = r7.f14028b
            int r8 = r8 % r0
            r7.f14032f = r8
            dc.d r8 = r7.f14029c
            long r3 = r8.elapsedRealtime()
            long r5 = r7.f14033g
            long r3 = r3 - r5
            long r5 = r7.f14030d
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 < 0) goto L3f
            goto L40
        L3f:
            r1 = r2
        L40:
            if (r1 == 0) goto L4f
            r7.a()
            com.yandex.metrica.impl.ob.zn r8 = new com.yandex.metrica.impl.ob.zn
            com.yandex.metrica.impl.ob.zn$a r0 = com.yandex.metrica.impl.ob.zn.a.REFRESH
            D r1 = r7.f14031e
            r8.<init>(r0, r1)
            return r8
        L4f:
            int r8 = r7.f14032f
            if (r8 != 0) goto L60
            r7.a()
            com.yandex.metrica.impl.ob.zn r8 = new com.yandex.metrica.impl.ob.zn
            com.yandex.metrica.impl.ob.zn$a r0 = com.yandex.metrica.impl.ob.zn.a.REFRESH
            D r1 = r7.f14031e
            r8.<init>(r0, r1)
            return r8
        L60:
            com.yandex.metrica.impl.ob.zn r8 = new com.yandex.metrica.impl.ob.zn
            com.yandex.metrica.impl.ob.zn$a r0 = com.yandex.metrica.impl.ob.zn.a.NOT_CHANGED
            D r1 = r7.f14031e
            r8.<init>(r0, r1)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.yn.get(java.lang.Object):com.yandex.metrica.impl.ob.zn");
    }
}
