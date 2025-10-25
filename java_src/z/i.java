package z;

import android.os.LocaleList;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static final i f33325b = a(new Locale[0]);

    /* renamed from: a  reason: collision with root package name */
    private final j f33326a;

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Locale[] f33327a = {new Locale("en", "XA"), new Locale("ar", "XB")};

        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static LocaleList a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }
    }

    private i(j jVar) {
        this.f33326a = jVar;
    }

    public static i a(Locale... localeArr) {
        return h(b.a(localeArr));
    }

    public static i b(String str) {
        if (str != null && !str.isEmpty()) {
            String[] split = str.split(StringUtils.COMMA, -1);
            int length = split.length;
            Locale[] localeArr = new Locale[length];
            for (int i10 = 0; i10 < length; i10++) {
                localeArr[i10] = a.a(split[i10]);
            }
            return a(localeArr);
        }
        return d();
    }

    public static i d() {
        return f33325b;
    }

    public static i h(LocaleList localeList) {
        return new i(new k(localeList));
    }

    public Locale c(int i10) {
        return this.f33326a.get(i10);
    }

    public boolean e() {
        return this.f33326a.isEmpty();
    }

    public boolean equals(Object obj) {
        if ((obj instanceof i) && this.f33326a.equals(((i) obj).f33326a)) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f33326a.size();
    }

    public String g() {
        return this.f33326a.a();
    }

    public int hashCode() {
        return this.f33326a.hashCode();
    }

    public String toString() {
        return this.f33326a.toString();
    }
}
