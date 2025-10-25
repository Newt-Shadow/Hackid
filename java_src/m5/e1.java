package m5;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import java.util.Set;
/* loaded from: classes.dex */
public final class e1 extends k6.d implements f.a, f.b {

    /* renamed from: m  reason: collision with root package name */
    private static final a.AbstractC0097a f25789m = j6.d.f24483c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f25790a;

    /* renamed from: g  reason: collision with root package name */
    private final Handler f25791g;

    /* renamed from: h  reason: collision with root package name */
    private final a.AbstractC0097a f25792h;

    /* renamed from: i  reason: collision with root package name */
    private final Set f25793i;

    /* renamed from: j  reason: collision with root package name */
    private final n5.e f25794j;

    /* renamed from: k  reason: collision with root package name */
    private j6.e f25795k;

    /* renamed from: l  reason: collision with root package name */
    private d1 f25796l;

    public e1(Context context, Handler handler, n5.e eVar) {
        a.AbstractC0097a abstractC0097a = f25789m;
        this.f25790a = context;
        this.f25791g = handler;
        this.f25794j = (n5.e) n5.q.l(eVar, "ClientSettings must not be null");
        this.f25793i = eVar.g();
        this.f25792h = abstractC0097a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void g1(e1 e1Var, k6.l lVar) {
        l5.b g10 = lVar.g();
        if (g10.n()) {
            n5.q0 q0Var = (n5.q0) n5.q.k(lVar.i());
            l5.b g11 = q0Var.g();
            if (!g11.n()) {
                String valueOf = String.valueOf(g11);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                e1Var.f25796l.a(g11);
                e1Var.f25795k.g();
                return;
            }
            e1Var.f25796l.b(q0Var.i(), e1Var.f25793i);
        } else {
            e1Var.f25796l.a(g10);
        }
        e1Var.f25795k.g();
    }

    @Override // k6.f
    public final void W(k6.l lVar) {
        this.f25791g.post(new c1(this, lVar));
    }

    @Override // m5.m
    public final void a(l5.b bVar) {
        this.f25796l.a(bVar);
    }

    @Override // m5.d
    public final void d(int i10) {
        this.f25796l.c(i10);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.a$f, j6.e] */
    public final void h1(d1 d1Var) {
        j6.e eVar = this.f25795k;
        if (eVar != null) {
            eVar.g();
        }
        this.f25794j.k(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0097a abstractC0097a = this.f25792h;
        Context context = this.f25790a;
        Handler handler = this.f25791g;
        n5.e eVar2 = this.f25794j;
        this.f25795k = abstractC0097a.a(context, handler.getLooper(), eVar2, eVar2.h(), this, this);
        this.f25796l = d1Var;
        Set set = this.f25793i;
        if (set != null && !set.isEmpty()) {
            this.f25795k.p();
        } else {
            this.f25791g.post(new b1(this));
        }
    }

    public final void i1() {
        j6.e eVar = this.f25795k;
        if (eVar != null) {
            eVar.g();
        }
    }

    @Override // m5.d
    public final void k(Bundle bundle) {
        this.f25795k.n(this);
    }
}
