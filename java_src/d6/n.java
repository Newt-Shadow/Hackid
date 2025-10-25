package d6;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.f;
import m5.j;
/* loaded from: classes.dex */
public final class n extends y {
    private final m K;

    public n(Context context, Looper looper, f.a aVar, f.b bVar, String str, n5.e eVar) {
        super(context, looper, aVar, bVar, str, eVar);
        this.K = new m(context, this.J);
    }

    @Override // n5.c
    public final boolean S() {
        return true;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final void g() {
        synchronized (this.K) {
            if (a()) {
                try {
                    this.K.f();
                    this.K.g();
                } catch (Exception e10) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e10);
                }
            }
            super.g();
        }
    }

    public final void n0(p pVar, m5.j jVar, g gVar) {
        synchronized (this.K) {
            this.K.c(pVar, jVar, gVar);
        }
    }

    public final void o0(j.a aVar, g gVar) {
        this.K.d(aVar, gVar);
    }

    public final Location p0(String str) {
        if (com.google.android.gms.common.util.b.b(l(), g6.v.f16288c)) {
            return this.K.a(str);
        }
        return this.K.b();
    }
}
