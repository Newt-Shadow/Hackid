package n5;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final String f26331a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26332b;

    public j(String str) {
        this(str, null);
    }

    public j(String str, String str2) {
        q.l(str, "log tag cannot be null");
        q.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f26331a = str;
        this.f26332b = (str2 == null || str2.length() <= 0) ? null : str2;
    }
}
