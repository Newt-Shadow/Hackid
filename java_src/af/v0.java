package af;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class v0 {

    /* renamed from: h  reason: collision with root package name */
    public static final a f454h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f455a;

    /* renamed from: b  reason: collision with root package name */
    public int f456b;

    /* renamed from: c  reason: collision with root package name */
    public int f457c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f458d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f459e;

    /* renamed from: f  reason: collision with root package name */
    public v0 f460f;

    /* renamed from: g  reason: collision with root package name */
    public v0 f461g;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public v0() {
        this.f455a = new byte[8192];
        this.f459e = true;
        this.f458d = false;
    }

    public final void a() {
        boolean z10;
        v0 v0Var = this.f461g;
        int i10 = 0;
        if (v0Var != this) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            kotlin.jvm.internal.m.b(v0Var);
            if (!v0Var.f459e) {
                return;
            }
            int i11 = this.f457c - this.f456b;
            v0 v0Var2 = this.f461g;
            kotlin.jvm.internal.m.b(v0Var2);
            int i12 = 8192 - v0Var2.f457c;
            v0 v0Var3 = this.f461g;
            kotlin.jvm.internal.m.b(v0Var3);
            if (!v0Var3.f458d) {
                v0 v0Var4 = this.f461g;
                kotlin.jvm.internal.m.b(v0Var4);
                i10 = v0Var4.f456b;
            }
            if (i11 > i12 + i10) {
                return;
            }
            v0 v0Var5 = this.f461g;
            kotlin.jvm.internal.m.b(v0Var5);
            f(v0Var5, i11);
            b();
            w0.b(this);
            return;
        }
        throw new IllegalStateException("cannot compact".toString());
    }

    public final v0 b() {
        v0 v0Var = this.f460f;
        if (v0Var == this) {
            v0Var = null;
        }
        v0 v0Var2 = this.f461g;
        kotlin.jvm.internal.m.b(v0Var2);
        v0Var2.f460f = this.f460f;
        v0 v0Var3 = this.f460f;
        kotlin.jvm.internal.m.b(v0Var3);
        v0Var3.f461g = this.f461g;
        this.f460f = null;
        this.f461g = null;
        return v0Var;
    }

    public final v0 c(v0 segment) {
        kotlin.jvm.internal.m.e(segment, "segment");
        segment.f461g = this;
        segment.f460f = this.f460f;
        v0 v0Var = this.f460f;
        kotlin.jvm.internal.m.b(v0Var);
        v0Var.f461g = segment;
        this.f460f = segment;
        return segment;
    }

    public final v0 d() {
        this.f458d = true;
        return new v0(this.f455a, this.f456b, this.f457c, true, false);
    }

    public final v0 e(int i10) {
        boolean z10;
        v0 c10;
        if (i10 > 0 && i10 <= this.f457c - this.f456b) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 >= 1024) {
                c10 = d();
            } else {
                c10 = w0.c();
                byte[] bArr = this.f455a;
                byte[] bArr2 = c10.f455a;
                int i11 = this.f456b;
                yc.j.h(bArr, bArr2, 0, i11, i11 + i10, 2, null);
            }
            c10.f457c = c10.f456b + i10;
            this.f456b += i10;
            v0 v0Var = this.f461g;
            kotlin.jvm.internal.m.b(v0Var);
            v0Var.c(c10);
            return c10;
        }
        throw new IllegalArgumentException("byteCount out of range".toString());
    }

    public final void f(v0 sink, int i10) {
        kotlin.jvm.internal.m.e(sink, "sink");
        if (sink.f459e) {
            int i11 = sink.f457c;
            if (i11 + i10 > 8192) {
                if (!sink.f458d) {
                    int i12 = sink.f456b;
                    if ((i11 + i10) - i12 <= 8192) {
                        byte[] bArr = sink.f455a;
                        yc.j.h(bArr, bArr, 0, i12, i11, 2, null);
                        sink.f457c -= sink.f456b;
                        sink.f456b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f455a;
            byte[] bArr3 = sink.f455a;
            int i13 = sink.f457c;
            int i14 = this.f456b;
            yc.j.d(bArr2, bArr3, i13, i14, i14 + i10);
            sink.f457c += i10;
            this.f456b += i10;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    public v0(byte[] data, int i10, int i11, boolean z10, boolean z11) {
        kotlin.jvm.internal.m.e(data, "data");
        this.f455a = data;
        this.f456b = i10;
        this.f457c = i11;
        this.f458d = z10;
        this.f459e = z11;
    }
}
