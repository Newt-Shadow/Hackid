package xd;
/* loaded from: classes2.dex */
final class t implements ad.e, kotlin.coroutines.jvm.internal.e {

    /* renamed from: a  reason: collision with root package name */
    private final ad.e f32771a;

    /* renamed from: b  reason: collision with root package name */
    private final ad.i f32772b;

    public t(ad.e eVar, ad.i iVar) {
        this.f32771a = eVar;
        this.f32772b = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        ad.e eVar = this.f32771a;
        if (eVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) eVar;
        }
        return null;
    }

    @Override // ad.e
    public ad.i getContext() {
        return this.f32772b;
    }

    @Override // ad.e
    public void resumeWith(Object obj) {
        this.f32771a.resumeWith(obj);
    }
}
