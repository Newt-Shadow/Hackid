package rd;

import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f29088a = new d();

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f29089b;

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f29090c;

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f29091d;

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f29092e;

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f29093f;

    /* renamed from: g  reason: collision with root package name */
    public static final Charset f29094g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Charset f29095h;

    /* renamed from: i  reason: collision with root package name */
    private static volatile Charset f29096i;

    static {
        Charset forName = Charset.forName("UTF-8");
        kotlin.jvm.internal.m.d(forName, "forName(...)");
        f29089b = forName;
        Charset forName2 = Charset.forName("UTF-16");
        kotlin.jvm.internal.m.d(forName2, "forName(...)");
        f29090c = forName2;
        Charset forName3 = Charset.forName("UTF-16BE");
        kotlin.jvm.internal.m.d(forName3, "forName(...)");
        f29091d = forName3;
        Charset forName4 = Charset.forName("UTF-16LE");
        kotlin.jvm.internal.m.d(forName4, "forName(...)");
        f29092e = forName4;
        Charset forName5 = Charset.forName("US-ASCII");
        kotlin.jvm.internal.m.d(forName5, "forName(...)");
        f29093f = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        kotlin.jvm.internal.m.d(forName6, "forName(...)");
        f29094g = forName6;
    }

    private d() {
    }

    public final Charset a() {
        Charset charset = f29096i;
        if (charset == null) {
            Charset forName = Charset.forName("UTF-32BE");
            kotlin.jvm.internal.m.d(forName, "forName(...)");
            f29096i = forName;
            return forName;
        }
        return charset;
    }

    public final Charset b() {
        Charset charset = f29095h;
        if (charset == null) {
            Charset forName = Charset.forName("UTF-32LE");
            kotlin.jvm.internal.m.d(forName, "forName(...)");
            f29095h = forName;
            return forName;
        }
        return charset;
    }
}
