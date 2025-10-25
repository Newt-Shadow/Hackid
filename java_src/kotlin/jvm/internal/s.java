package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public abstract class s extends y implements pd.h {
    public s(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // kotlin.jvm.internal.d
    protected pd.b computeReflected() {
        return d0.e(this);
    }

    @Override // id.a
    public Object invoke() {
        return get();
    }
}
