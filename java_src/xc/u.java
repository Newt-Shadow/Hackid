package xc;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class u implements d, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private id.a f32734a;

    /* renamed from: b  reason: collision with root package name */
    private Object f32735b;

    public u(id.a initializer) {
        kotlin.jvm.internal.m.e(initializer, "initializer");
        this.f32734a = initializer;
        this.f32735b = r.f32732a;
    }

    @Override // xc.d
    public boolean a() {
        if (this.f32735b != r.f32732a) {
            return true;
        }
        return false;
    }

    @Override // xc.d
    public Object getValue() {
        if (this.f32735b == r.f32732a) {
            id.a aVar = this.f32734a;
            kotlin.jvm.internal.m.b(aVar);
            this.f32735b = aVar.invoke();
            this.f32734a = null;
        }
        return this.f32735b;
    }

    public String toString() {
        if (a()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
