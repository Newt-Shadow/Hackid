package lf;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f25544a = h(1);

    /* renamed from: b  reason: collision with root package name */
    public static final int f25545b = h(2);

    /* renamed from: c  reason: collision with root package name */
    public static final int f25546c = h(3);

    /* renamed from: d  reason: collision with root package name */
    public static final int f25547d = h(4);

    /* renamed from: e  reason: collision with root package name */
    public static final int f25548e = g(1);

    /* renamed from: f  reason: collision with root package name */
    public static final int f25549f = g(2);

    /* renamed from: g  reason: collision with root package name */
    public static final int f25550g = g(3);

    /* renamed from: h  reason: collision with root package name */
    public static final int f25551h = g(4);

    /* renamed from: i  reason: collision with root package name */
    public static final int f25552i = c(1);

    /* renamed from: j  reason: collision with root package name */
    public static final int f25553j = c(2);

    /* renamed from: k  reason: collision with root package name */
    public static final int f25554k = c(3);

    /* renamed from: l  reason: collision with root package name */
    public static final int f25555l = c(4);

    /* renamed from: m  reason: collision with root package name */
    public static final int f25556m = b(1);

    /* renamed from: n  reason: collision with root package name */
    public static final int f25557n = b(2);

    /* renamed from: o  reason: collision with root package name */
    public static final int f25558o = b(3);

    /* renamed from: p  reason: collision with root package name */
    public static final int f25559p = b(4);

    /* renamed from: q  reason: collision with root package name */
    public static final int f25560q = e(1);

    /* renamed from: r  reason: collision with root package name */
    public static final int f25561r = e(2);

    /* renamed from: s  reason: collision with root package name */
    public static final int f25562s = e(3);

    /* renamed from: t  reason: collision with root package name */
    public static final int f25563t = e(4);

    /* renamed from: u  reason: collision with root package name */
    public static final int f25564u = d(1);

    /* renamed from: v  reason: collision with root package name */
    public static final int f25565v = d(2);

    /* renamed from: w  reason: collision with root package name */
    public static final int f25566w = d(3);

    /* renamed from: x  reason: collision with root package name */
    public static final int f25567x = d(4);

    /* renamed from: y  reason: collision with root package name */
    public static final int f25568y = f(1);

    /* renamed from: z  reason: collision with root package name */
    public static final int f25569z = f(2);
    public static final int A = f(3);
    public static final int B = f(4);
    public static final int C = a(1);
    public static final int D = a(2);
    public static final int E = a(3);
    public static final int F = a(4);

    public static final int a(int i10) {
        return k(7, i10);
    }

    public static final int b(int i10) {
        return k(3, i10);
    }

    public static final int c(int i10) {
        return k(2, i10);
    }

    public static final int d(int i10) {
        return k(5, i10);
    }

    public static final int e(int i10) {
        return k(4, i10);
    }

    public static final int f(int i10) {
        return k(6, i10);
    }

    public static final int g(int i10) {
        return k(1, i10);
    }

    public static final int h(int i10) {
        return k(0, i10);
    }

    public static final int i(int i10) {
        return (i10 >> 3) + 1;
    }

    public static final int j(int i10) {
        return i10 & 7;
    }

    public static final int k(int i10, int i11) {
        if (i11 > 0 && i11 < 512) {
            if (i10 >= 0 && i10 < 8) {
                return (i10 & 7) + ((i11 - 1) << 3);
            }
            throw new UnsupportedOperationException("Data type depth should be 0..7");
        }
        throw new UnsupportedOperationException("Channels count should be 1..511");
    }

    public static final String l(int i10) {
        String str;
        switch (j(i10)) {
            case 0:
                str = "CV_8U";
                break;
            case 1:
                str = "CV_8S";
                break;
            case 2:
                str = "CV_16U";
                break;
            case 3:
                str = "CV_16S";
                break;
            case 4:
                str = "CV_32S";
                break;
            case 5:
                str = "CV_32F";
                break;
            case 6:
                str = "CV_64F";
                break;
            case 7:
                str = "CV_16F";
                break;
            default:
                throw new UnsupportedOperationException("Unsupported CvType value: " + i10);
        }
        int i11 = i(i10);
        if (i11 <= 4) {
            return str + "C" + i11;
        }
        return str + "C(" + i11 + ")";
    }
}
