package w8;
/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final c f31958b = new c(null);

    /* renamed from: a  reason: collision with root package name */
    private final Object f31959a;

    private c(Object obj) {
        this.f31959a = obj;
    }

    public static b a(Object obj) {
        return new c(d.c(obj, "instance cannot be null"));
    }

    @Override // wc.a
    public Object get() {
        return this.f31959a;
    }
}
