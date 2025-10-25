package ud;

import ad.i;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import td.l;
import td.w1;
import td.z0;
import xc.t;
/* loaded from: classes2.dex */
public final class d extends e {

    /* renamed from: c  reason: collision with root package name */
    private final Handler f31090c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31091d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f31092e;

    /* renamed from: f  reason: collision with root package name */
    private final d f31093f;

    /* loaded from: classes2.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f31094a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f31095b;

        public a(l lVar, d dVar) {
            this.f31094a = lVar;
            this.f31095b = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f31094a.i(this.f31095b, t.f32733a);
        }
    }

    private d(Handler handler, String str, boolean z10) {
        super(null);
        this.f31090c = handler;
        this.f31091d = str;
        this.f31092e = z10;
        this.f31093f = z10 ? this : new d(handler, str, true);
    }

    private final void V0(i iVar, Runnable runnable) {
        w1.c(iVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        z0.b().q0(iVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t X0(d dVar, Runnable runnable, Throwable th) {
        dVar.f31090c.removeCallbacks(runnable);
        return t.f32733a;
    }

    @Override // td.d2
    /* renamed from: W0 */
    public d J0() {
        return this.f31093f;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (dVar.f31090c == this.f31090c && dVar.f31092e == this.f31092e) {
                return true;
            }
        }
        return false;
    }

    @Override // td.u0
    public void h(long j10, l lVar) {
        long e10;
        final a aVar = new a(lVar, this);
        Handler handler = this.f31090c;
        e10 = od.i.e(j10, 4611686018427387903L);
        if (handler.postDelayed(aVar, e10)) {
            lVar.l(new id.l() { // from class: ud.c
                @Override // id.l
                public final Object invoke(Object obj) {
                    t X0;
                    X0 = d.X0(d.this, aVar, (Throwable) obj);
                    return X0;
                }
            });
        } else {
            V0(lVar.getContext(), aVar);
        }
    }

    public int hashCode() {
        int i10;
        int identityHashCode = System.identityHashCode(this.f31090c);
        if (this.f31092e) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return identityHashCode ^ i10;
    }

    @Override // td.i0
    public void q0(i iVar, Runnable runnable) {
        if (!this.f31090c.post(runnable)) {
            V0(iVar, runnable);
        }
    }

    @Override // td.i0
    public boolean t0(i iVar) {
        if (this.f31092e && m.a(Looper.myLooper(), this.f31090c.getLooper())) {
            return false;
        }
        return true;
    }

    @Override // td.i0
    public String toString() {
        String T0 = T0();
        if (T0 == null) {
            String str = this.f31091d;
            if (str == null) {
                str = this.f31090c.toString();
            }
            if (this.f31092e) {
                return str + ".immediate";
            }
            return str;
        }
        return T0;
    }

    public /* synthetic */ d(Handler handler, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public d(Handler handler, String str) {
        this(handler, str, false);
    }
}
