package h8;

import k7.d0;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Class f16893a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f16894b;

    public a(Class cls, Object obj) {
        this.f16893a = (Class) d0.b(cls);
        this.f16894b = d0.b(obj);
    }

    public Object a() {
        return this.f16894b;
    }

    public Class b() {
        return this.f16893a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f16893a, this.f16894b);
    }
}
