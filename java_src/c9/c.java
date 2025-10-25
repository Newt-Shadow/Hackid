package c9;

import com.google.gson.t;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class c implements Closeable, Flushable {

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f5087l = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f5088m = new String[128];

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f5089n;

    /* renamed from: a  reason: collision with root package name */
    private final Writer f5090a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f5091b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    private int f5092c = 0;

    /* renamed from: d  reason: collision with root package name */
    private com.google.gson.d f5093d;

    /* renamed from: e  reason: collision with root package name */
    private String f5094e;

    /* renamed from: f  reason: collision with root package name */
    private String f5095f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5096g;

    /* renamed from: h  reason: collision with root package name */
    private t f5097h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5098i;

    /* renamed from: j  reason: collision with root package name */
    private String f5099j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5100k;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f5088m[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f5088m;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f5089n = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        H(6);
        this.f5097h = t.LEGACY_STRICT;
        this.f5100k = true;
        Objects.requireNonNull(writer, "out == null");
        this.f5090a = writer;
        W(com.google.gson.d.f9107d);
    }

    private int E() {
        int i10 = this.f5092c;
        if (i10 != 0) {
            return this.f5091b[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void H(int i10) {
        int i11 = this.f5092c;
        int[] iArr = this.f5091b;
        if (i11 == iArr.length) {
            this.f5091b = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f5091b;
        int i12 = this.f5092c;
        this.f5092c = i12 + 1;
        iArr2[i12] = i10;
    }

    private void P(int i10) {
        this.f5091b[this.f5092c - 1] = i10;
    }

    private void U0() {
        if (this.f5099j != null) {
            b();
            o0(this.f5099j);
            this.f5099j = null;
        }
    }

    private static boolean a(Class cls) {
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            return false;
        }
        return true;
    }

    private void b() {
        int E = E();
        if (E == 5) {
            this.f5090a.write(this.f5095f);
        } else if (E != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        w();
        P(4);
    }

    private void c() {
        int E = E();
        if (E != 1) {
            if (E != 2) {
                if (E != 4) {
                    if (E != 6) {
                        if (E == 7) {
                            if (this.f5097h != t.LENIENT) {
                                throw new IllegalStateException("JSON must have only one top-level value.");
                            }
                        } else {
                            throw new IllegalStateException("Nesting problem.");
                        }
                    }
                    P(7);
                    return;
                }
                this.f5090a.append((CharSequence) this.f5094e);
                P(5);
                return;
            }
            this.f5090a.append((CharSequence) this.f5095f);
            w();
            return;
        }
        P(2);
        w();
    }

    private c g(int i10, int i11, char c10) {
        int E = E();
        if (E != i11 && E != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f5099j == null) {
            this.f5092c--;
            if (E == i11) {
                w();
            }
            this.f5090a.write(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f5099j);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o0(java.lang.String r9) {
        /*
            r8 = this;
            boolean r0 = r8.f5098i
            if (r0 == 0) goto L7
            java.lang.String[] r0 = c9.c.f5089n
            goto L9
        L7:
            java.lang.String[] r0 = c9.c.f5088m
        L9:
            java.io.Writer r1 = r8.f5090a
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f5090a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f5090a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f5090a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f5090a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.c.o0(java.lang.String):void");
    }

    private void w() {
        if (this.f5096g) {
            return;
        }
        this.f5090a.write(this.f5093d.b());
        int i10 = this.f5092c;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f5090a.write(this.f5093d.a());
        }
    }

    private c z(int i10, char c10) {
        c();
        H(i10);
        this.f5090a.write(c10);
        return this;
    }

    public c A0(Boolean bool) {
        String str;
        if (bool == null) {
            return x();
        }
        U0();
        c();
        Writer writer = this.f5090a;
        if (bool.booleanValue()) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }

    public c D0(Number number) {
        if (number == null) {
            return x();
        }
        U0();
        String obj = number.toString();
        Class<?> cls = number.getClass();
        if (!a(cls)) {
            if (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN")) {
                if (cls != Float.class && cls != Double.class && !f5087l.matcher(obj).matches()) {
                    throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + obj);
                }
            } else if (this.f5097h != t.LENIENT) {
                throw new IllegalArgumentException("Numeric values must be finite, but was " + obj);
            }
        }
        c();
        this.f5090a.append((CharSequence) obj);
        return this;
    }

    public c J0(String str) {
        if (str == null) {
            return x();
        }
        U0();
        c();
        o0(str);
        return this;
    }

    public c T0(boolean z10) {
        String str;
        U0();
        c();
        Writer writer = this.f5090a;
        if (z10) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }

    public final void W(com.google.gson.d dVar) {
        boolean z10;
        Objects.requireNonNull(dVar);
        this.f5093d = dVar;
        this.f5095f = StringUtils.COMMA;
        if (dVar.c()) {
            this.f5094e = ": ";
            if (this.f5093d.b().isEmpty()) {
                this.f5095f = ", ";
            }
        } else {
            this.f5094e = ":";
        }
        if (this.f5093d.b().isEmpty() && this.f5093d.a().isEmpty()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f5096g = z10;
    }

    public final void X(boolean z10) {
        this.f5098i = z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5090a.close();
        int i10 = this.f5092c;
        if (i10 <= 1 && (i10 != 1 || this.f5091b[i10 - 1] == 7)) {
            this.f5092c = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public final void d0(boolean z10) {
        this.f5100k = z10;
    }

    public c e() {
        U0();
        return z(1, '[');
    }

    public c f() {
        U0();
        return z(3, '{');
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.f5092c != 0) {
            this.f5090a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c h() {
        return g(1, 2, ']');
    }

    public c j() {
        return g(3, 5, '}');
    }

    public final boolean k() {
        return this.f5100k;
    }

    public final void k0(t tVar) {
        Objects.requireNonNull(tVar);
        this.f5097h = tVar;
    }

    public final t q() {
        return this.f5097h;
    }

    public c q0(double d10) {
        U0();
        if (this.f5097h != t.LENIENT && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
        c();
        this.f5090a.append((CharSequence) Double.toString(d10));
        return this;
    }

    public final boolean s() {
        return this.f5098i;
    }

    public c t0(long j10) {
        U0();
        c();
        this.f5090a.write(Long.toString(j10));
        return this;
    }

    public boolean u() {
        if (this.f5097h == t.LENIENT) {
            return true;
        }
        return false;
    }

    public c v(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f5099j == null) {
            int E = E();
            if (E != 3 && E != 5) {
                throw new IllegalStateException("Please begin an object before writing a name.");
            }
            this.f5099j = str;
            return this;
        }
        throw new IllegalStateException("Already wrote a name, expecting a value.");
    }

    public c x() {
        if (this.f5099j != null) {
            if (this.f5100k) {
                U0();
            } else {
                this.f5099j = null;
                return this;
            }
        }
        c();
        this.f5090a.write("null");
        return this;
    }
}
