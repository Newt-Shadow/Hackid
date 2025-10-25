package x5;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import m5.u;
import m6.Task;
/* loaded from: classes.dex */
public final class p extends com.google.android.gms.common.api.e implements c5.a {

    /* renamed from: m  reason: collision with root package name */
    private static final a.g f32495m;

    /* renamed from: n  reason: collision with root package name */
    private static final a.AbstractC0097a f32496n;

    /* renamed from: o  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f32497o;

    /* renamed from: k  reason: collision with root package name */
    private final Context f32498k;

    /* renamed from: l  reason: collision with root package name */
    private final l5.g f32499l;

    static {
        a.g gVar = new a.g();
        f32495m = gVar;
        n nVar = new n();
        f32496n = nVar;
        f32497o = new com.google.android.gms.common.api.a("AppSet.API", nVar, gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context, l5.g gVar) {
        super(context, f32497o, a.d.f5879i0, e.a.f5890c);
        this.f32498k = context;
        this.f32499l = gVar;
    }

    @Override // c5.a
    public final Task a() {
        if (this.f32499l.h(this.f32498k, 212800000) == 0) {
            return i(u.a().d(c5.g.f5041a).b(new m5.q() { // from class: x5.m
                @Override // m5.q
                public final void a(Object obj, Object obj2) {
                    ((g) ((d) obj).D()).f1(new c5.c(null, null), new o(p.this, (m6.l) obj2));
                }
            }).c(false).e(27601).a());
        }
        return m6.n.d(new com.google.android.gms.common.api.b(new Status(17)));
    }
}
