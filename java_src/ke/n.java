package ke;

import id.Function2;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final ie.e f24917a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f24918b;

    /* loaded from: classes2.dex */
    /* synthetic */ class a extends kotlin.jvm.internal.k implements Function2 {
        a(Object obj) {
            super(2, obj, n.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
        }

        public final Boolean f(ge.d p02, int i10) {
            kotlin.jvm.internal.m.e(p02, "p0");
            return Boolean.valueOf(((n) this.receiver).e(p02, i10));
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return f((ge.d) obj, ((Number) obj2).intValue());
        }
    }

    public n(ge.d descriptor) {
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        this.f24917a = new ie.e(descriptor, new a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e(ge.d dVar, int i10) {
        boolean z10;
        if (!dVar.j(i10) && dVar.i(i10).c()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f24918b = z10;
        return z10;
    }

    public final boolean b() {
        return this.f24918b;
    }

    public final void c(int i10) {
        this.f24917a.a(i10);
    }

    public final int d() {
        return this.f24917a.d();
    }
}
