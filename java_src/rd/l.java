package rd;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class l implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final a f29120b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f29121a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public l(Pattern nativePattern) {
        kotlin.jvm.internal.m.e(nativePattern, "nativePattern");
        this.f29121a = nativePattern;
    }

    public static /* synthetic */ i c(l lVar, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return lVar.b(charSequence, i10);
    }

    public final boolean a(CharSequence input) {
        kotlin.jvm.internal.m.e(input, "input");
        return this.f29121a.matcher(input).find();
    }

    public final i b(CharSequence input, int i10) {
        i d10;
        kotlin.jvm.internal.m.e(input, "input");
        Matcher matcher = this.f29121a.matcher(input);
        kotlin.jvm.internal.m.d(matcher, "matcher(...)");
        d10 = m.d(matcher, i10, input);
        return d10;
    }

    public final boolean d(CharSequence input) {
        kotlin.jvm.internal.m.e(input, "input");
        return this.f29121a.matcher(input).matches();
    }

    public final String e(CharSequence input, id.l transform) {
        kotlin.jvm.internal.m.e(input, "input");
        kotlin.jvm.internal.m.e(transform, "transform");
        int i10 = 0;
        i c10 = c(this, input, 0, 2, null);
        if (c10 == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb2 = new StringBuilder(length);
        do {
            sb2.append(input, i10, c10.a().p().intValue());
            sb2.append((CharSequence) transform.invoke(c10));
            i10 = c10.a().o().intValue() + 1;
            c10 = c10.next();
            if (i10 >= length) {
                break;
            }
        } while (c10 != null);
        if (i10 < length) {
            sb2.append(input, i10, length);
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "toString(...)");
        return sb3;
    }

    public final String f(CharSequence input, String replacement) {
        kotlin.jvm.internal.m.e(input, "input");
        kotlin.jvm.internal.m.e(replacement, "replacement");
        String replaceAll = this.f29121a.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.m.d(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    public final List g(CharSequence input, int i10) {
        List b10;
        kotlin.jvm.internal.m.e(input, "input");
        b0.u0(i10);
        Matcher matcher = this.f29121a.matcher(input);
        if (i10 == 1 || !matcher.find()) {
            b10 = yc.n.b(input.toString());
            return b10;
        }
        int i11 = 10;
        if (i10 > 0) {
            i11 = od.i.d(i10, 10);
        }
        ArrayList arrayList = new ArrayList(i11);
        int i12 = i10 - 1;
        int i13 = 0;
        do {
            arrayList.add(input.subSequence(i13, matcher.start()).toString());
            i13 = matcher.end();
            if (i12 >= 0 && arrayList.size() == i12) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(i13, input.length()).toString());
        return arrayList;
    }

    public String toString() {
        String pattern = this.f29121a.toString();
        kotlin.jvm.internal.m.d(pattern, "toString(...)");
        return pattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.m.e(r2, r0)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            java.lang.String r0 = "compile(...)"
            kotlin.jvm.internal.m.d(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: rd.l.<init>(java.lang.String):void");
    }
}
