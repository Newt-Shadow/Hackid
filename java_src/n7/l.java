package n7;

import k8.a;
import s7.o;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final k8.a f26479a;

    public l(k8.a aVar) {
        this.f26479a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(e eVar, k8.b bVar) {
        android.support.v4.media.session.b.a(bVar.get());
        throw null;
    }

    public void c(o oVar) {
        if (oVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
            return;
        }
        final e eVar = new e(oVar);
        this.f26479a.a(new a.InterfaceC0232a() { // from class: n7.k
            @Override // k8.a.InterfaceC0232a
            public final void a(k8.b bVar) {
                l.b(e.this, bVar);
            }
        });
    }
}
