package yd;
/* loaded from: classes2.dex */
public class b0 extends td.a implements kotlin.coroutines.jvm.internal.e {

    /* renamed from: d  reason: collision with root package name */
    public final ad.e f33248d;

    public b0(ad.i iVar, ad.e eVar) {
        super(iVar, true, true);
        this.f33248d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // td.z1
    public void F(Object obj) {
        ad.e c10;
        c10 = bd.c.c(this.f33248d);
        i.b(c10, td.c0.a(obj, this.f33248d));
    }

    @Override // td.a
    protected void O0(Object obj) {
        ad.e eVar = this.f33248d;
        eVar.resumeWith(td.c0.a(obj, eVar));
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public final kotlin.coroutines.jvm.internal.e getCallerFrame() {
        ad.e eVar = this.f33248d;
        if (eVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) eVar;
        }
        return null;
    }

    @Override // td.z1
    protected final boolean p0() {
        return true;
    }
}
