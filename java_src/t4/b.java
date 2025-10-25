package t4;

import android.text.TextUtils;
import java.util.regex.Pattern;
import o6.s;
/* loaded from: classes.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f29860d = Pattern.compile("\\s+");

    /* renamed from: e  reason: collision with root package name */
    private static final s f29861e = s.D("auto", "none");

    /* renamed from: f  reason: collision with root package name */
    private static final s f29862f = s.F("dot", "sesame", "circle");

    /* renamed from: g  reason: collision with root package name */
    private static final s f29863g = s.D("filled", "open");

    /* renamed from: h  reason: collision with root package name */
    private static final s f29864h = s.F("after", "before", "outside");

    /* renamed from: a  reason: collision with root package name */
    public final int f29865a;

    /* renamed from: b  reason: collision with root package name */
    public final int f29866b;

    /* renamed from: c  reason: collision with root package name */
    public final int f29867c;

    private b(int i10, int i11, int i12) {
        this.f29865a = i10;
        this.f29866b = i11;
        this.f29867c = i12;
    }

    public static b a(String str) {
        if (str == null) {
            return null;
        }
        String e10 = n6.c.e(str.trim());
        if (e10.isEmpty()) {
            return null;
        }
        return b(s.s(TextUtils.split(e10, f29860d)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
        if (r9.equals("auto") != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fe, code lost:
        if (r9.equals("dot") == false) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static t4.b b(o6.s r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.b.b(o6.s):t4.b");
    }
}
