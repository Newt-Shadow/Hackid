package com.google.gson.internal.bind;

import c9.d;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.n;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public final class a extends c9.a {

    /* renamed from: u  reason: collision with root package name */
    private static final Reader f9272u = new C0113a();

    /* renamed from: v  reason: collision with root package name */
    private static final Object f9273v = new Object();

    /* renamed from: q  reason: collision with root package name */
    private Object[] f9274q;

    /* renamed from: r  reason: collision with root package name */
    private int f9275r;

    /* renamed from: s  reason: collision with root package name */
    private String[] f9276s;

    /* renamed from: t  reason: collision with root package name */
    private int[] f9277t;

    /* renamed from: com.google.gson.internal.bind.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0113a extends Reader {
        C0113a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9278a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f9278a = iArr;
            try {
                iArr[c9.b.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9278a[c9.b.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9278a[c9.b.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9278a[c9.b.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(i iVar) {
        super(f9272u);
        this.f9274q = new Object[32];
        this.f9275r = 0;
        this.f9276s = new String[32];
        this.f9277t = new int[32];
        c1(iVar);
    }

    private void W0(c9.b bVar) {
        if (X() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + X() + x());
    }

    private String Y0(boolean z10) {
        String str;
        W0(c9.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) Z0()).next();
        String str2 = (String) entry.getKey();
        String[] strArr = this.f9276s;
        int i10 = this.f9275r - 1;
        if (z10) {
            str = "<skipped>";
        } else {
            str = str2;
        }
        strArr[i10] = str;
        c1(entry.getValue());
        return str2;
    }

    private Object Z0() {
        return this.f9274q[this.f9275r - 1];
    }

    private Object a1() {
        Object[] objArr = this.f9274q;
        int i10 = this.f9275r - 1;
        this.f9275r = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    private void c1(Object obj) {
        int i10 = this.f9275r;
        Object[] objArr = this.f9274q;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f9274q = Arrays.copyOf(objArr, i11);
            this.f9277t = Arrays.copyOf(this.f9277t, i11);
            this.f9276s = (String[]) Arrays.copyOf(this.f9276s, i11);
        }
        Object[] objArr2 = this.f9274q;
        int i12 = this.f9275r;
        this.f9275r = i12 + 1;
        objArr2[i12] = obj;
    }

    private String k(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f9275r;
            if (i10 < i11) {
                Object[] objArr = this.f9274q;
                Object obj = objArr[i10];
                if (obj instanceof f) {
                    i10++;
                    if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                        int i12 = this.f9277t[i10];
                        if (z10 && i12 > 0 && (i10 == i11 - 1 || i10 == i11 - 2)) {
                            i12--;
                        }
                        sb2.append('[');
                        sb2.append(i12);
                        sb2.append(']');
                    }
                } else if ((obj instanceof l) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                    sb2.append('.');
                    String str = this.f9276s[i10];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }

    private String x() {
        return " at path " + j();
    }

    @Override // c9.a
    public String C() {
        c9.b X = X();
        c9.b bVar = c9.b.STRING;
        if (X != bVar && X != c9.b.NUMBER) {
            throw new IllegalStateException("Expected " + bVar + " but was " + X + x());
        }
        String n10 = ((n) a1()).n();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return n10;
    }

    @Override // c9.a
    public long E0() {
        c9.b X = X();
        c9.b bVar = c9.b.NUMBER;
        if (X != bVar && X != c9.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + X + x());
        }
        long B = ((n) Z0()).B();
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return B;
    }

    @Override // c9.a
    public void G() {
        int i10 = b.f9278a[X().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        a1();
                        int i11 = this.f9275r;
                        if (i11 > 0) {
                            int[] iArr = this.f9277t;
                            int i12 = i11 - 1;
                            iArr[i12] = iArr[i12] + 1;
                            return;
                        }
                        return;
                    }
                    return;
                }
                r();
                return;
            }
            g();
            return;
        }
        Y0(true);
    }

    @Override // c9.a
    public void H() {
        W0(c9.b.NULL);
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // c9.a
    public double S() {
        c9.b X = X();
        c9.b bVar = c9.b.NUMBER;
        if (X != bVar && X != c9.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + X + x());
        }
        double A = ((n) Z0()).A();
        if (!v() && (Double.isNaN(A) || Double.isInfinite(A))) {
            throw new d("JSON forbids NaN and infinities: " + A);
        }
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return A;
    }

    @Override // c9.a
    public c9.b X() {
        if (this.f9275r == 0) {
            return c9.b.END_DOCUMENT;
        }
        Object Z0 = Z0();
        if (Z0 instanceof Iterator) {
            boolean z10 = this.f9274q[this.f9275r - 2] instanceof l;
            Iterator it = (Iterator) Z0;
            if (it.hasNext()) {
                if (z10) {
                    return c9.b.NAME;
                }
                c1(it.next());
                return X();
            } else if (z10) {
                return c9.b.END_OBJECT;
            } else {
                return c9.b.END_ARRAY;
            }
        } else if (Z0 instanceof l) {
            return c9.b.BEGIN_OBJECT;
        } else {
            if (Z0 instanceof f) {
                return c9.b.BEGIN_ARRAY;
            }
            if (Z0 instanceof n) {
                n nVar = (n) Z0;
                if (nVar.I()) {
                    return c9.b.STRING;
                }
                if (nVar.D()) {
                    return c9.b.BOOLEAN;
                }
                if (nVar.G()) {
                    return c9.b.NUMBER;
                }
                throw new AssertionError();
            } else if (Z0 instanceof k) {
                return c9.b.NULL;
            } else {
                if (Z0 == f9273v) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new d("Custom JsonElement subclass " + Z0.getClass().getName() + " is not supported");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i X0() {
        c9.b X = X();
        if (X != c9.b.NAME && X != c9.b.END_ARRAY && X != c9.b.END_OBJECT && X != c9.b.END_DOCUMENT) {
            i iVar = (i) Z0();
            G();
            return iVar;
        }
        throw new IllegalStateException("Unexpected " + X + " when reading a JsonElement.");
    }

    @Override // c9.a
    public void b() {
        W0(c9.b.BEGIN_ARRAY);
        c1(((f) Z0()).iterator());
        this.f9277t[this.f9275r - 1] = 0;
    }

    public void b1() {
        W0(c9.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) Z0()).next();
        c1(entry.getValue());
        c1(new n((String) entry.getKey()));
    }

    @Override // c9.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f9274q = new Object[]{f9273v};
        this.f9275r = 1;
    }

    @Override // c9.a
    public String f0() {
        return Y0(false);
    }

    @Override // c9.a
    public void g() {
        W0(c9.b.END_ARRAY);
        a1();
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // c9.a
    public String j() {
        return k(false);
    }

    @Override // c9.a
    public int j0() {
        c9.b X = X();
        c9.b bVar = c9.b.NUMBER;
        if (X != bVar && X != c9.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + X + x());
        }
        int g10 = ((n) Z0()).g();
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return g10;
    }

    @Override // c9.a
    public String q() {
        return k(true);
    }

    @Override // c9.a
    public void r() {
        W0(c9.b.END_OBJECT);
        this.f9276s[this.f9275r - 1] = null;
        a1();
        a1();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // c9.a
    public void t() {
        W0(c9.b.BEGIN_OBJECT);
        c1(((l) Z0()).y().iterator());
    }

    @Override // c9.a
    public String toString() {
        return a.class.getSimpleName() + x();
    }

    @Override // c9.a
    public boolean u() {
        c9.b X = X();
        if (X != c9.b.END_OBJECT && X != c9.b.END_ARRAY && X != c9.b.END_DOCUMENT) {
            return true;
        }
        return false;
    }

    @Override // c9.a
    public boolean z() {
        W0(c9.b.BOOLEAN);
        boolean d10 = ((n) a1()).d();
        int i10 = this.f9275r;
        if (i10 > 0) {
            int[] iArr = this.f9277t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return d10;
    }
}
