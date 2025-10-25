package ne;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: j  reason: collision with root package name */
    public static final a f26740j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f26741k = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f26742l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f26743m = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f26744n = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a  reason: collision with root package name */
    private final String f26745a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26746b;

    /* renamed from: c  reason: collision with root package name */
    private final long f26747c;

    /* renamed from: d  reason: collision with root package name */
    private final String f26748d;

    /* renamed from: e  reason: collision with root package name */
    private final String f26749e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f26750f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f26751g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f26752h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f26753i;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x003f, code lost:
            if (r1 != ':') goto L7;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final int a(java.lang.String r6, int r7, int r8, boolean r9) {
            /*
                r5 = this;
            L0:
                if (r7 >= r8) goto L49
                int r0 = r7 + 1
                char r1 = r6.charAt(r7)
                r2 = 32
                r3 = 1
                if (r1 >= r2) goto L11
                r2 = 9
                if (r1 != r2) goto L41
            L11:
                r2 = 127(0x7f, float:1.78E-43)
                if (r1 >= r2) goto L41
                r2 = 57
                r4 = 0
                if (r1 > r2) goto L20
                r2 = 48
                if (r2 > r1) goto L20
                r2 = r3
                goto L21
            L20:
                r2 = r4
            L21:
                if (r2 != 0) goto L41
                r2 = 122(0x7a, float:1.71E-43)
                if (r1 > r2) goto L2d
                r2 = 97
                if (r2 > r1) goto L2d
                r2 = r3
                goto L2e
            L2d:
                r2 = r4
            L2e:
                if (r2 != 0) goto L41
                r2 = 90
                if (r1 > r2) goto L3a
                r2 = 65
                if (r2 > r1) goto L3a
                r2 = r3
                goto L3b
            L3a:
                r2 = r4
            L3b:
                if (r2 != 0) goto L41
                r2 = 58
                if (r1 != r2) goto L42
            L41:
                r4 = r3
            L42:
                r1 = r9 ^ 1
                if (r4 != r1) goto L47
                return r7
            L47:
                r7 = r0
                goto L0
            L49:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: ne.l.a.a(java.lang.String, int, int, boolean):int");
        }

        private final boolean b(String str, String str2) {
            boolean w10;
            if (!kotlin.jvm.internal.m.a(str, str2)) {
                w10 = rd.y.w(str, str2, false, 2, null);
                if (w10 && str.charAt((str.length() - str2.length()) - 1) == '.' && !oe.d.i(str)) {
                    return true;
                }
                return false;
            }
            return true;
        }

        private final String f(String str) {
            boolean w10;
            String s02;
            w10 = rd.y.w(str, ".", false, 2, null);
            if (!w10) {
                s02 = rd.b0.s0(str, ".");
                String e10 = oe.a.e(s02);
                if (e10 != null) {
                    return e10;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private final long g(String str, int i10, int i11) {
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            boolean z16;
            boolean z17;
            int Z;
            int a10 = a(str, i10, i11, false);
            Matcher matcher = l.f26744n.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            while (a10 < i11) {
                int a11 = a(str, a10 + 1, i11, true);
                matcher.region(a10, a11);
                if (i13 == -1 && matcher.usePattern(l.f26744n).matches()) {
                    String group = matcher.group(1);
                    kotlin.jvm.internal.m.d(group, "matcher.group(1)");
                    i13 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    kotlin.jvm.internal.m.d(group2, "matcher.group(2)");
                    i16 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    kotlin.jvm.internal.m.d(group3, "matcher.group(3)");
                    i17 = Integer.parseInt(group3);
                } else if (i14 == -1 && matcher.usePattern(l.f26743m).matches()) {
                    String group4 = matcher.group(1);
                    kotlin.jvm.internal.m.d(group4, "matcher.group(1)");
                    i14 = Integer.parseInt(group4);
                } else if (i15 == -1 && matcher.usePattern(l.f26742l).matches()) {
                    String group5 = matcher.group(1);
                    kotlin.jvm.internal.m.d(group5, "matcher.group(1)");
                    Locale US = Locale.US;
                    kotlin.jvm.internal.m.d(US, "US");
                    String lowerCase = group5.toLowerCase(US);
                    kotlin.jvm.internal.m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String pattern = l.f26742l.pattern();
                    kotlin.jvm.internal.m.d(pattern, "MONTH_PATTERN.pattern()");
                    Z = rd.b0.Z(pattern, lowerCase, 0, false, 6, null);
                    i15 = Z / 4;
                } else if (i12 == -1 && matcher.usePattern(l.f26741k).matches()) {
                    String group6 = matcher.group(1);
                    kotlin.jvm.internal.m.d(group6, "matcher.group(1)");
                    i12 = Integer.parseInt(group6);
                }
                a10 = a(str, a11 + 1, i11, false);
            }
            if (70 <= i12 && i12 < 100) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                i12 += 1900;
            }
            if (i12 >= 0 && i12 < 70) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                i12 += 2000;
            }
            if (i12 >= 1601) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12) {
                if (i15 != -1) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (z13) {
                    if (1 <= i14 && i14 < 32) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (z14) {
                        if (i13 >= 0 && i13 < 24) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if (z15) {
                            if (i16 >= 0 && i16 < 60) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            if (z16) {
                                if (i17 >= 0 && i17 < 60) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                                if (z17) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(oe.d.f27587f);
                                    gregorianCalendar.setLenient(false);
                                    gregorianCalendar.set(1, i12);
                                    gregorianCalendar.set(2, i15 - 1);
                                    gregorianCalendar.set(5, i14);
                                    gregorianCalendar.set(11, i13);
                                    gregorianCalendar.set(12, i16);
                                    gregorianCalendar.set(13, i17);
                                    gregorianCalendar.set(14, 0);
                                    return gregorianCalendar.getTimeInMillis();
                                }
                                throw new IllegalArgumentException("Failed requirement.".toString());
                            }
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private final long h(String str) {
            boolean H;
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e10) {
                if (new rd.l("-?\\d+").d(str)) {
                    H = rd.y.H(str, "-", false, 2, null);
                    if (H) {
                        return Long.MIN_VALUE;
                    }
                    return Long.MAX_VALUE;
                }
                throw e10;
            }
        }

        public final l c(t url, String setCookie) {
            kotlin.jvm.internal.m.e(url, "url");
            kotlin.jvm.internal.m.e(setCookie, "setCookie");
            return d(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x0102, code lost:
            if (r1 > 253402300799999L) goto L86;
         */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x013e  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x015a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ne.l d(long r26, ne.t r28, java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 368
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ne.l.a.d(long, ne.t, java.lang.String):ne.l");
        }

        public final List e(t url, s headers) {
            List h10;
            kotlin.jvm.internal.m.e(url, "url");
            kotlin.jvm.internal.m.e(headers, "headers");
            List n10 = headers.n("Set-Cookie");
            int size = n10.size();
            ArrayList arrayList = null;
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                l c10 = c(url, (String) n10.get(i10));
                if (c10 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c10);
                }
                i10 = i11;
            }
            if (arrayList == null) {
                h10 = yc.o.h();
                return h10;
            }
            List unmodifiableList = Collections.unmodifiableList(arrayList);
            kotlin.jvm.internal.m.d(unmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return unmodifiableList;
        }
    }

    public /* synthetic */ l(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j10, str3, str4, z10, z11, z12, z13);
    }

    public final String e() {
        return this.f26748d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (kotlin.jvm.internal.m.a(lVar.f26745a, this.f26745a) && kotlin.jvm.internal.m.a(lVar.f26746b, this.f26746b) && lVar.f26747c == this.f26747c && kotlin.jvm.internal.m.a(lVar.f26748d, this.f26748d) && kotlin.jvm.internal.m.a(lVar.f26749e, this.f26749e) && lVar.f26750f == this.f26750f && lVar.f26751g == this.f26751g && lVar.f26752h == this.f26752h && lVar.f26753i == this.f26753i) {
                return true;
            }
        }
        return false;
    }

    public final long f() {
        return this.f26747c;
    }

    public final boolean g() {
        return this.f26753i;
    }

    public final boolean h() {
        return this.f26751g;
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f26745a.hashCode()) * 31) + this.f26746b.hashCode()) * 31) + Long.hashCode(this.f26747c)) * 31) + this.f26748d.hashCode()) * 31) + this.f26749e.hashCode()) * 31) + Boolean.hashCode(this.f26750f)) * 31) + Boolean.hashCode(this.f26751g)) * 31) + Boolean.hashCode(this.f26752h)) * 31) + Boolean.hashCode(this.f26753i);
    }

    public final String i() {
        return this.f26745a;
    }

    public final String j() {
        return this.f26749e;
    }

    public final boolean k() {
        return this.f26752h;
    }

    public final boolean l() {
        return this.f26750f;
    }

    public final String m(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i());
        sb2.append('=');
        sb2.append(n());
        if (k()) {
            if (f() == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(te.c.b(new Date(f())));
            }
        }
        if (!g()) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(e());
        }
        sb2.append("; path=");
        sb2.append(j());
        if (l()) {
            sb2.append("; secure");
        }
        if (h()) {
            sb2.append("; httponly");
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "toString()");
        return sb3;
    }

    public final String n() {
        return this.f26746b;
    }

    public String toString() {
        return m(false);
    }

    private l(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f26745a = str;
        this.f26746b = str2;
        this.f26747c = j10;
        this.f26748d = str3;
        this.f26749e = str4;
        this.f26750f = z10;
        this.f26751g = z11;
        this.f26752h = z12;
        this.f26753i = z13;
    }
}
