package m5;

import android.os.Handler;
import n5.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h0 implements c.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i0 f25803a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(i0 i0Var) {
        this.f25803a = i0Var;
    }

    @Override // n5.c.e
    public final void a() {
        Handler handler;
        handler = this.f25803a.f25816r.f25786n;
        handler.post(new g0(this));
    }
}
