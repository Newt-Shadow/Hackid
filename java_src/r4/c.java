package r4;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.flutter.embedding.android.KeyboardMap;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import q6.e;
import y4.q0;
import y4.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f28938a;

    /* renamed from: b  reason: collision with root package name */
    public final int f28939b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f28940c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f28941d;

    /* renamed from: e  reason: collision with root package name */
    public final float f28942e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f28943f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f28944g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f28945h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f28946i;

    /* renamed from: j  reason: collision with root package name */
    public final int f28947j;

    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f28948a;

        /* renamed from: b  reason: collision with root package name */
        public final int f28949b;

        /* renamed from: c  reason: collision with root package name */
        public final int f28950c;

        /* renamed from: d  reason: collision with root package name */
        public final int f28951d;

        /* renamed from: e  reason: collision with root package name */
        public final int f28952e;

        /* renamed from: f  reason: collision with root package name */
        public final int f28953f;

        /* renamed from: g  reason: collision with root package name */
        public final int f28954g;

        /* renamed from: h  reason: collision with root package name */
        public final int f28955h;

        /* renamed from: i  reason: collision with root package name */
        public final int f28956i;

        /* renamed from: j  reason: collision with root package name */
        public final int f28957j;

        /* renamed from: k  reason: collision with root package name */
        public final int f28958k;

        private a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.f28948a = i10;
            this.f28949b = i11;
            this.f28950c = i12;
            this.f28951d = i13;
            this.f28952e = i14;
            this.f28953f = i15;
            this.f28954g = i16;
            this.f28955h = i17;
            this.f28956i = i18;
            this.f28957j = i19;
            this.f28958k = i20;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static a a(String str) {
            char c10;
            String[] split = TextUtils.split(str.substring(7), StringUtils.COMMA);
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            for (int i20 = 0; i20 < split.length; i20++) {
                String e10 = n6.c.e(split[i20].trim());
                e10.hashCode();
                switch (e10.hashCode()) {
                    case -1178781136:
                        if (e10.equals("italic")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1026963764:
                        if (e10.equals("underline")) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -192095652:
                        if (e10.equals("strikeout")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -70925746:
                        if (e10.equals("primarycolour")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3029637:
                        if (e10.equals("bold")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3373707:
                        if (e10.equals(Constants.NAME)) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 366554320:
                        if (e10.equals("fontsize")) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 767321349:
                        if (e10.equals("borderstyle")) {
                            c10 = 7;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1767875043:
                        if (e10.equals("alignment")) {
                            c10 = '\b';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1988365454:
                        if (e10.equals("outlinecolour")) {
                            c10 = '\t';
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                switch (c10) {
                    case 0:
                        i16 = i20;
                        break;
                    case 1:
                        i17 = i20;
                        break;
                    case 2:
                        i18 = i20;
                        break;
                    case 3:
                        i12 = i20;
                        break;
                    case 4:
                        i15 = i20;
                        break;
                    case 5:
                        i10 = i20;
                        break;
                    case 6:
                        i14 = i20;
                        break;
                    case 7:
                        i19 = i20;
                        break;
                    case '\b':
                        i11 = i20;
                        break;
                    case '\t':
                        i13 = i20;
                        break;
                }
            }
            if (i10 != -1) {
                return new a(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, split.length);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f28959c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f28960d = Pattern.compile(q0.C("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e  reason: collision with root package name */
        private static final Pattern f28961e = Pattern.compile(q0.C("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f28962f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f28963a;

        /* renamed from: b  reason: collision with root package name */
        public final PointF f28964b;

        private b(int i10, PointF pointF) {
            this.f28963a = i10;
            this.f28964b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f28962f.matcher(str);
            if (matcher.find()) {
                return c.e((String) y4.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f28959c.matcher(str);
            PointF pointF = null;
            int i10 = -1;
            while (matcher.find()) {
                String str2 = (String) y4.a.e(matcher.group(1));
                try {
                    PointF c10 = c(str2);
                    if (c10 != null) {
                        pointF = c10;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int a10 = a(str2);
                    if (a10 != -1) {
                        i10 = a10;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i10, pointF);
        }

        private static PointF c(String str) {
            String group;
            String group2;
            Matcher matcher = f28960d.matcher(str);
            Matcher matcher2 = f28961e.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    r.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else if (find2) {
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            } else {
                return null;
            }
            return new PointF(Float.parseFloat(((String) y4.a.e(group)).trim()), Float.parseFloat(((String) y4.a.e(group2)).trim()));
        }

        public static String d(String str) {
            return f28959c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i10, Integer num, Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.f28938a = str;
        this.f28939b = i10;
        this.f28940c = num;
        this.f28941d = num2;
        this.f28942e = f10;
        this.f28943f = z10;
        this.f28944g = z11;
        this.f28945h = z12;
        this.f28946i = z13;
        this.f28947j = i11;
    }

    public static c b(String str, a aVar) {
        int i10;
        Integer num;
        Integer num2;
        float f10;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i11;
        y4.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), StringUtils.COMMA);
        int length = split.length;
        int i12 = aVar.f28958k;
        if (length != i12) {
            r.i("SsaStyle", q0.C("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i12), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[aVar.f28948a].trim();
            int i13 = aVar.f28949b;
            if (i13 != -1) {
                i10 = e(split[i13].trim());
            } else {
                i10 = -1;
            }
            int i14 = aVar.f28950c;
            if (i14 != -1) {
                num = h(split[i14].trim());
            } else {
                num = null;
            }
            int i15 = aVar.f28951d;
            if (i15 != -1) {
                num2 = h(split[i15].trim());
            } else {
                num2 = null;
            }
            int i16 = aVar.f28952e;
            if (i16 != -1) {
                f10 = i(split[i16].trim());
            } else {
                f10 = -3.4028235E38f;
            }
            float f11 = f10;
            int i17 = aVar.f28953f;
            if (i17 != -1 && f(split[i17].trim())) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i18 = aVar.f28954g;
            if (i18 != -1 && f(split[i18].trim())) {
                z11 = true;
            } else {
                z11 = false;
            }
            int i19 = aVar.f28955h;
            if (i19 != -1 && f(split[i19].trim())) {
                z12 = true;
            } else {
                z12 = false;
            }
            int i20 = aVar.f28956i;
            if (i20 != -1 && f(split[i20].trim())) {
                z13 = true;
            } else {
                z13 = false;
            }
            int i21 = aVar.f28957j;
            if (i21 != -1) {
                i11 = g(split[i21].trim());
            } else {
                i11 = -1;
            }
            return new c(trim, i10, num, num2, f11, z10, z11, z12, z13, i11);
        } catch (RuntimeException e10) {
            r.j("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e10);
            return null;
        }
    }

    private static boolean c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i10) {
        return i10 == 1 || i10 == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        r.i("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e10) {
            r.j("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }

    private static int g(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (d(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        r.i("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    public static Integer h(String str) {
        long parseLong;
        boolean z10;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= KeyboardMap.kValueMask) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.a(z10);
            int d10 = e.d(((parseLong >> 24) & 255) ^ 255);
            int d11 = e.d((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(d10, e.d(parseLong & 255), e.d((parseLong >> 8) & 255), d11));
        } catch (IllegalArgumentException e10) {
            r.j("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            r.j("SsaStyle", "Failed to parse font size: '" + str + "'", e10);
            return -3.4028235E38f;
        }
    }
}
