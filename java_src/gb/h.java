package gb;

import android.os.SystemClock;
import java.time.Clock;
import java.util.Date;
import xc.l;
/* loaded from: classes.dex */
public final class h implements lb.g {

    /* renamed from: a  reason: collision with root package name */
    private final Object f16357a;

    public h() {
        Object b10;
        Clock currentNetworkTimeClock;
        try {
            l.a aVar = xc.l.f32718b;
            currentNetworkTimeClock = SystemClock.currentNetworkTimeClock();
            b10 = xc.l.b(currentNetworkTimeClock);
        } catch (Throwable th) {
            l.a aVar2 = xc.l.f32718b;
            b10 = xc.l.b(xc.m.a(th));
        }
        this.f16357a = b10;
    }

    @Override // lb.g
    public long a() {
        return System.nanoTime();
    }

    @Override // lb.g
    public Date b(int i10) {
        return new Date(currentTimeMillis() + (i10 * 1000));
    }

    @Override // lb.g
    public Date c() {
        return new Date(currentTimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    @Override // lb.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long currentTimeMillis() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f16357a
            boolean r1 = xc.l.g(r0)
            if (r1 == 0) goto L20
            java.time.Clock r0 = gb.e.a(r0)     // Catch: java.lang.Throwable -> L19
            long r0 = gb.f.a(r0)     // Catch: java.lang.Throwable -> L19
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> L19
            java.lang.Object r0 = xc.l.b(r0)     // Catch: java.lang.Throwable -> L19
            goto L24
        L19:
            r0 = move-exception
            xc.l$a r1 = xc.l.f32718b
            java.lang.Object r0 = xc.m.a(r0)
        L20:
            java.lang.Object r0 = xc.l.b(r0)
        L24:
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r2 = xc.l.f(r0)
            if (r2 == 0) goto L33
            r0 = r1
        L33:
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gb.h.currentTimeMillis():long");
    }
}
