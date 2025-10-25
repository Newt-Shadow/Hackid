package io.sentry;
/* loaded from: classes2.dex */
public final class n2 {

    /* renamed from: a  reason: collision with root package name */
    private final Class f23277a;

    private n2(Class cls) {
        this.f23277a = cls;
    }

    public static n2 a(Class cls) {
        return new n2(cls);
    }

    public Object b() {
        return this.f23277a.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
    }
}
