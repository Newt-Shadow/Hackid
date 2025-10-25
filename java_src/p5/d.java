package p5;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import m5.q;
import m5.u;
import m6.Task;
import m6.l;
import n5.u;
import n5.w;
import n5.x;
/* loaded from: classes.dex */
public final class d extends com.google.android.gms.common.api.e implements w {

    /* renamed from: k  reason: collision with root package name */
    private static final a.g f27875k;

    /* renamed from: l  reason: collision with root package name */
    private static final a.AbstractC0097a f27876l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f27877m;

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f27878n = 0;

    static {
        a.g gVar = new a.g();
        f27875k = gVar;
        c cVar = new c();
        f27876l = cVar;
        f27877m = new com.google.android.gms.common.api.a("ClientTelemetry.API", cVar, gVar);
    }

    public d(Context context, x xVar) {
        super(context, f27877m, xVar, e.a.f5890c);
    }

    @Override // n5.w
    public final Task c(final u uVar) {
        u.a a10 = m5.u.a();
        a10.d(a6.d.f114a);
        a10.c(false);
        a10.b(new q() { // from class: p5.b
            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                int i10 = d.f27878n;
                ((a) ((e) obj).D()).g1(n5.u.this);
                ((l) obj2).c(null);
            }
        });
        return g(a10.a());
    }
}
