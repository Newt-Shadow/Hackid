package io.sentry.vendor.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class c implements Closeable, Flushable {

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f23878j = new String[128];

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f23879k;

    /* renamed from: a  reason: collision with root package name */
    private final Writer f23880a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f23881b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    private int f23882c = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f23883d;

    /* renamed from: e  reason: collision with root package name */
    private String f23884e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23885f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23886g;

    /* renamed from: h  reason: collision with root package name */
    private String f23887h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f23888i;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f23878j[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f23878j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f23879k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        w(6);
        this.f23884e = ":";
        this.f23888i = true;
        if (writer != null) {
            this.f23880a = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void E(java.lang.String r9) {
        /*
            r8 = this;
            boolean r0 = r8.f23886g
            if (r0 == 0) goto L7
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.c.f23879k
            goto L9
        L7:
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.c.f23878j
        L9:
            java.io.Writer r1 = r8.f23880a
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
            java.io.Writer r6 = r8.f23880a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f23880a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f23880a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f23880a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.c.E(java.lang.String):void");
    }

    private void a() {
        int v10 = v();
        if (v10 == 5) {
            this.f23880a.write(44);
        } else if (v10 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        q();
        x(4);
    }

    private void b() {
        int v10 = v();
        if (v10 != 1) {
            if (v10 != 2) {
                if (v10 != 4) {
                    if (v10 != 6) {
                        if (v10 == 7) {
                            if (!this.f23885f) {
                                throw new IllegalStateException("JSON must have only one top-level value.");
                            }
                        } else {
                            throw new IllegalStateException("Nesting problem.");
                        }
                    }
                    x(7);
                    return;
                }
                this.f23880a.append((CharSequence) this.f23884e);
                x(5);
                return;
            }
            this.f23880a.append(',');
            q();
            return;
        }
        x(2);
        q();
    }

    private c f(int i10, int i11, char c10) {
        int v10 = v();
        if (v10 != i11 && v10 != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f23887h == null) {
            this.f23882c--;
            if (v10 == i11) {
                q();
            }
            this.f23880a.write(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f23887h);
    }

    private void o0() {
        if (this.f23887h != null) {
            a();
            E(this.f23887h);
            this.f23887h = null;
        }
    }

    private void q() {
        if (this.f23883d == null) {
            return;
        }
        this.f23880a.write(10);
        int i10 = this.f23882c;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f23880a.write(this.f23883d);
        }
    }

    private c u(int i10, char c10) {
        b();
        w(i10);
        this.f23880a.write(c10);
        return this;
    }

    private int v() {
        int i10 = this.f23882c;
        if (i10 != 0) {
            return this.f23881b[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void w(int i10) {
        int i11 = this.f23882c;
        int[] iArr = this.f23881b;
        if (i11 == iArr.length) {
            this.f23881b = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f23881b;
        int i12 = this.f23882c;
        this.f23882c = i12 + 1;
        iArr2[i12] = i10;
    }

    private void x(int i10) {
        this.f23881b[this.f23882c - 1] = i10;
    }

    public c H(double d10) {
        o0();
        if (!this.f23885f && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
        b();
        this.f23880a.append((CharSequence) Double.toString(d10));
        return this;
    }

    public c P(long j10) {
        o0();
        b();
        this.f23880a.write(Long.toString(j10));
        return this;
    }

    public c W(Boolean bool) {
        String str;
        if (bool == null) {
            return s();
        }
        o0();
        b();
        Writer writer = this.f23880a;
        if (bool.booleanValue()) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }

    public c X(Number number) {
        if (number == null) {
            return s();
        }
        o0();
        String obj = number.toString();
        if (!this.f23885f && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        b();
        this.f23880a.append((CharSequence) obj);
        return this;
    }

    public c c() {
        o0();
        return u(1, '[');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f23880a.close();
        int i10 = this.f23882c;
        if (i10 <= 1 && (i10 != 1 || this.f23881b[i10 - 1] == 7)) {
            this.f23882c = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public c d0(String str) {
        if (str == null) {
            return s();
        }
        o0();
        b();
        E(str);
        return this;
    }

    public c e() {
        o0();
        return u(3, '{');
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.f23882c != 0) {
            this.f23880a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c g() {
        return f(1, 2, ']');
    }

    public c h() {
        return f(3, 5, '}');
    }

    public c j(String str) {
        if (str == null) {
            return s();
        }
        o0();
        b();
        this.f23880a.append((CharSequence) str);
        return this;
    }

    public c k(String str) {
        if (str != null) {
            if (this.f23887h == null) {
                if (this.f23882c != 0) {
                    this.f23887h = str;
                    return this;
                }
                throw new IllegalStateException("JsonWriter is closed.");
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    public c k0(boolean z10) {
        String str;
        o0();
        b();
        Writer writer = this.f23880a;
        if (z10) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }

    public final void p(boolean z10) {
        this.f23885f = z10;
    }

    public c s() {
        if (this.f23887h != null) {
            if (this.f23888i) {
                o0();
            } else {
                this.f23887h = null;
                return this;
            }
        }
        b();
        this.f23880a.write("null");
        return this;
    }

    public final void z(String str) {
        if (str.length() == 0) {
            this.f23883d = null;
            this.f23884e = ":";
            return;
        }
        this.f23883d = str;
        this.f23884e = ": ";
    }
}
