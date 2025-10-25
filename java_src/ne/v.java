package ne;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: e  reason: collision with root package name */
    public static final a f26801e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f26802f = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f26803g = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a  reason: collision with root package name */
    private final String f26804a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26805b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26806c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f26807d;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final v a(String str) {
            boolean H;
            boolean w10;
            kotlin.jvm.internal.m.e(str, "<this>");
            Matcher matcher = v.f26802f.matcher(str);
            if (matcher.lookingAt()) {
                String group = matcher.group(1);
                kotlin.jvm.internal.m.d(group, "typeSubtype.group(1)");
                Locale US = Locale.US;
                kotlin.jvm.internal.m.d(US, "US");
                String lowerCase = group.toLowerCase(US);
                kotlin.jvm.internal.m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                String group2 = matcher.group(2);
                kotlin.jvm.internal.m.d(group2, "typeSubtype.group(2)");
                kotlin.jvm.internal.m.d(US, "US");
                String lowerCase2 = group2.toLowerCase(US);
                kotlin.jvm.internal.m.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                ArrayList arrayList = new ArrayList();
                Matcher matcher2 = v.f26803g.matcher(str);
                int end = matcher.end();
                while (end < str.length()) {
                    matcher2.region(end, str.length());
                    if (matcher2.lookingAt()) {
                        String group3 = matcher2.group(1);
                        if (group3 == null) {
                            end = matcher2.end();
                        } else {
                            String group4 = matcher2.group(2);
                            if (group4 != null) {
                                H = rd.y.H(group4, "'", false, 2, null);
                                if (H) {
                                    w10 = rd.y.w(group4, "'", false, 2, null);
                                    if (w10 && group4.length() > 2) {
                                        group4 = group4.substring(1, group4.length() - 1);
                                        kotlin.jvm.internal.m.d(group4, "this as java.lang.String…ing(startIndex, endIndex)");
                                    }
                                }
                            } else {
                                group4 = matcher2.group(3);
                            }
                            arrayList.add(group3);
                            arrayList.add(group4);
                            end = matcher2.end();
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Parameter is not formatted correctly: \"");
                        String substring = str.substring(end);
                        kotlin.jvm.internal.m.d(substring, "this as java.lang.String).substring(startIndex)");
                        sb2.append(substring);
                        sb2.append("\" for: \"");
                        sb2.append(str);
                        sb2.append('\"');
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    return new v(str, lowerCase, lowerCase2, (String[]) array, null);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }

        public final v b(String str) {
            kotlin.jvm.internal.m.e(str, "<this>");
            try {
                return a(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public /* synthetic */ v(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    public final Charset c(Charset charset) {
        String d10 = d("charset");
        if (d10 == null) {
            return charset;
        }
        try {
            return Charset.forName(d10);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final String d(String name) {
        boolean x10;
        kotlin.jvm.internal.m.e(name, "name");
        int i10 = 0;
        int c10 = dd.c.c(0, this.f26807d.length - 1, 2);
        if (c10 < 0) {
            return null;
        }
        while (true) {
            int i11 = i10 + 2;
            x10 = rd.y.x(this.f26807d[i10], name, true);
            if (x10) {
                return this.f26807d[i10 + 1];
            }
            if (i10 != c10) {
                i10 = i11;
            } else {
                return null;
            }
        }
    }

    public boolean equals(Object obj) {
        if ((obj instanceof v) && kotlin.jvm.internal.m.a(((v) obj).f26804a, this.f26804a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f26804a.hashCode();
    }

    public String toString() {
        return this.f26804a;
    }

    private v(String str, String str2, String str3, String[] strArr) {
        this.f26804a = str;
        this.f26805b = str2;
        this.f26806c = str3;
        this.f26807d = strArr;
    }
}
