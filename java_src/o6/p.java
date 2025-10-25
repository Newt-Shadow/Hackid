package o6;

import java.io.Serializable;
/* loaded from: classes.dex */
class p extends e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Object f27477a;

    /* renamed from: b  reason: collision with root package name */
    final Object f27478b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Object obj, Object obj2) {
        this.f27477a = obj;
        this.f27478b = obj2;
    }

    @Override // o6.e, java.util.Map.Entry
    public final Object getKey() {
        return this.f27477a;
    }

    @Override // o6.e, java.util.Map.Entry
    public final Object getValue() {
        return this.f27478b;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
