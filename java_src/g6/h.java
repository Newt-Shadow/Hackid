package g6;

import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
final class h extends d6.f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6.l f16278a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(b bVar, m6.l lVar) {
        this.f16278a = lVar;
    }

    @Override // d6.g
    public final void f() {
    }

    @Override // d6.g
    public final void i0(d6.b bVar) {
        Status d10 = bVar.d();
        if (d10 == null) {
            this.f16278a.d(new com.google.android.gms.common.api.b(new Status(8, "Got null status from location service")));
        } else if (d10.i() == 0) {
            this.f16278a.c(Boolean.TRUE);
        } else {
            this.f16278a.d(n5.b.a(d10));
        }
    }
}
