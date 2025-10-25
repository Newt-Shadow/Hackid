package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.n;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: r  reason: collision with root package name */
    private static final Writer f9279r = new a();

    /* renamed from: s  reason: collision with root package name */
    private static final n f9280s = new n("closed");

    /* renamed from: o  reason: collision with root package name */
    private final List f9281o;

    /* renamed from: p  reason: collision with root package name */
    private String f9282p;

    /* renamed from: q  reason: collision with root package name */
    private i f9283q;

    /* loaded from: classes.dex */
    class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public b() {
        super(f9279r);
        this.f9281o = new ArrayList();
        this.f9283q = k.f9349a;
    }

    private i W0() {
        List list = this.f9281o;
        return (i) list.get(list.size() - 1);
    }

    private void X0(i iVar) {
        if (this.f9282p != null) {
            if (!iVar.p() || k()) {
                ((l) W0()).t(this.f9282p, iVar);
            }
            this.f9282p = null;
        } else if (this.f9281o.isEmpty()) {
            this.f9283q = iVar;
        } else {
            i W0 = W0();
            if (W0 instanceof f) {
                ((f) W0).t(iVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // c9.c
    public c A0(Boolean bool) {
        if (bool == null) {
            return x();
        }
        X0(new n(bool));
        return this;
    }

    @Override // c9.c
    public c D0(Number number) {
        if (number == null) {
            return x();
        }
        if (!u()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        X0(new n(number));
        return this;
    }

    @Override // c9.c
    public c J0(String str) {
        if (str == null) {
            return x();
        }
        X0(new n(str));
        return this;
    }

    @Override // c9.c
    public c T0(boolean z10) {
        X0(new n(Boolean.valueOf(z10)));
        return this;
    }

    public i V0() {
        if (this.f9281o.isEmpty()) {
            return this.f9283q;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f9281o);
    }

    @Override // c9.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f9281o.isEmpty()) {
            this.f9281o.add(f9280s);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // c9.c
    public c e() {
        f fVar = new f();
        X0(fVar);
        this.f9281o.add(fVar);
        return this;
    }

    @Override // c9.c
    public c f() {
        l lVar = new l();
        X0(lVar);
        this.f9281o.add(lVar);
        return this;
    }

    @Override // c9.c, java.io.Flushable
    public void flush() {
    }

    @Override // c9.c
    public c h() {
        if (!this.f9281o.isEmpty() && this.f9282p == null) {
            if (W0() instanceof f) {
                List list = this.f9281o;
                list.remove(list.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // c9.c
    public c j() {
        if (!this.f9281o.isEmpty() && this.f9282p == null) {
            if (W0() instanceof l) {
                List list = this.f9281o;
                list.remove(list.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // c9.c
    public c q0(double d10) {
        if (!u() && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d10);
        }
        X0(new n(Double.valueOf(d10)));
        return this;
    }

    @Override // c9.c
    public c t0(long j10) {
        X0(new n(Long.valueOf(j10)));
        return this;
    }

    @Override // c9.c
    public c v(String str) {
        Objects.requireNonNull(str, "name == null");
        if (!this.f9281o.isEmpty() && this.f9282p == null) {
            if (W0() instanceof l) {
                this.f9282p = str;
                return this;
            }
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        throw new IllegalStateException("Did not expect a name");
    }

    @Override // c9.c
    public c x() {
        X0(k.f9349a);
        return this;
    }
}
