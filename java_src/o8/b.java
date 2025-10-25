package o8;
/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static b f27520a;

    private b() {
    }

    public static b a() {
        if (f27520a == null) {
            f27520a = new b();
        }
        return f27520a;
    }

    @Override // o8.a
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
