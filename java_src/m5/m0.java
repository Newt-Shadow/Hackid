package m5;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.api.a;
import java.util.Map;
import java.util.Set;
import n5.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m0 implements c.InterfaceC0255c, d1 {

    /* renamed from: a  reason: collision with root package name */
    private final a.f f25832a;

    /* renamed from: b  reason: collision with root package name */
    private final b f25833b;

    /* renamed from: c  reason: collision with root package name */
    private n5.k f25834c = null;

    /* renamed from: d  reason: collision with root package name */
    private Set f25835d = null;

    /* renamed from: e  reason: collision with root package name */
    private boolean f25836e = false;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ e f25837f;

    public m0(e eVar, a.f fVar, b bVar) {
        this.f25837f = eVar;
        this.f25832a = fVar;
        this.f25833b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        n5.k kVar;
        if (this.f25836e && (kVar = this.f25834c) != null) {
            this.f25832a.k(kVar, this.f25835d);
        }
    }

    @Override // m5.d1
    public final void a(l5.b bVar) {
        Map map;
        map = this.f25837f.f25782j;
        i0 i0Var = (i0) map.get(this.f25833b);
        if (i0Var != null) {
            i0Var.I(bVar);
        }
    }

    @Override // m5.d1
    public final void b(n5.k kVar, Set set) {
        if (kVar != null && set != null) {
            this.f25834c = kVar;
            this.f25835d = set;
            i();
            return;
        }
        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
        a(new l5.b(4));
    }

    @Override // m5.d1
    public final void c(int i10) {
        Map map;
        boolean z10;
        map = this.f25837f.f25782j;
        i0 i0Var = (i0) map.get(this.f25833b);
        if (i0Var != null) {
            z10 = i0Var.f25812n;
            if (z10) {
                i0Var.I(new l5.b(17));
            } else {
                i0Var.d(i10);
            }
        }
    }

    @Override // n5.c.InterfaceC0255c
    public final void d(l5.b bVar) {
        Handler handler;
        handler = this.f25837f.f25786n;
        handler.post(new l0(this, bVar));
    }
}
