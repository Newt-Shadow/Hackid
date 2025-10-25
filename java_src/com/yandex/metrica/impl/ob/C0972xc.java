package com.yandex.metrica.impl.ob;

import android.location.Location;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.xc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0972xc extends AbstractC0914v2<Location> {

    /* renamed from: d  reason: collision with root package name */
    public static final long f13941d = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: e  reason: collision with root package name */
    public static final List<String> f13942e = Arrays.asList("gps", "network");

    /* renamed from: c  reason: collision with root package name */
    private a f13943c;

    /* renamed from: com.yandex.metrica.impl.ob.xc$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f13944a;

        public a(long j10, long j11, long j12) {
            this.f13944a = j10;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0972xc(com.yandex.metrica.impl.ob.Ph r9) {
        /*
            r8 = this;
            com.yandex.metrica.impl.ob.xc$a r7 = new com.yandex.metrica.impl.ob.xc$a
            long r1 = com.yandex.metrica.impl.ob.C0972xc.f13941d
            r3 = 200(0xc8, double:9.9E-322)
            r5 = 50
            r0 = r7
            r0.<init>(r1, r3, r5)
            if (r9 == 0) goto L11
            long r0 = r9.f11112c
            goto L15
        L11:
            com.yandex.metrica.impl.ob.If$c r0 = com.yandex.metrica.impl.ob.G.f10096e
            long r0 = r0.f10265c
        L15:
            r2 = r0
            r0 = 2
            if (r9 == 0) goto L1d
            long r4 = r9.f11112c
            goto L21
        L1d:
            com.yandex.metrica.impl.ob.If$c r9 = com.yandex.metrica.impl.ob.G.f10096e
            long r4 = r9.f10265c
        L21:
            long r4 = r4 * r0
            r0 = r8
            r1 = r7
            r0.<init>(r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0972xc.<init>(com.yandex.metrica.impl.ob.Ph):void");
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected boolean a(Object obj) {
        Location location = (Location) obj;
        return f13942e.contains(location.getProvider()) && (this.f10101a.b() || this.f10101a.d() || a(location, (Location) this.f10101a.a()));
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected long b(Ph ph) {
        return ph.f11112c;
    }

    @Override // com.yandex.metrica.impl.ob.G0
    protected long a(Ph ph) {
        return ph.f11112c * 2;
    }

    C0972xc(a aVar, long j10, long j11) {
        super(j10, j11);
        this.f13943c = aVar;
    }

    private boolean a(Location location, Location location2) {
        boolean equals;
        long j10 = this.f13943c.f13944a;
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z10 = time > j10;
        boolean z11 = time < (-j10);
        boolean z12 = time > 0;
        if (z10) {
            return true;
        }
        if (!z11) {
            int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
            boolean z13 = accuracy > 0;
            boolean z14 = accuracy < 0;
            boolean z15 = ((long) accuracy) > 200;
            String provider = location.getProvider();
            String provider2 = location2.getProvider();
            if (provider == null) {
                equals = provider2 == null;
            } else {
                equals = provider.equals(provider2);
            }
            if (z14) {
                return true;
            }
            if (z12 && !z13) {
                return true;
            }
            if (z12 && !z15 && equals) {
                return true;
            }
        }
        return false;
    }
}
