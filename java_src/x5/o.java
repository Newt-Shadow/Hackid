package x5;

import com.google.android.gms.common.api.Status;
import m5.v;
/* loaded from: classes.dex */
final class o extends e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6.l f32494a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(p pVar, m6.l lVar) {
        this.f32494a = lVar;
    }

    @Override // x5.f
    public final void L(Status status, c5.e eVar) {
        c5.b bVar;
        if (eVar != null) {
            bVar = new c5.b(eVar.i(), eVar.g());
        } else {
            bVar = null;
        }
        v.a(status, bVar, this.f32494a);
    }
}
