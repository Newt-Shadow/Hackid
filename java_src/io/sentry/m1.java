package io.sentry;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class m1 implements l2 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.vendor.gson.stream.a f23260a;

    public m1(Reader reader) {
        this.f23260a = new io.sentry.vendor.gson.stream.a(reader);
    }

    @Override // io.sentry.l2
    public Object B0() {
        return new l1().e(this);
    }

    @Override // io.sentry.l2
    public String C() {
        return this.f23260a.C();
    }

    @Override // io.sentry.l2
    public long E0() {
        return this.f23260a.E0();
    }

    @Override // io.sentry.l2
    public void G() {
        this.f23260a.G();
    }

    @Override // io.sentry.l2
    public Integer J() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return Integer.valueOf(this.f23260a.j0());
    }

    @Override // io.sentry.l2
    public Map L(ILogger iLogger, g1 g1Var) {
        if (peek() == io.sentry.vendor.gson.stream.b.NULL) {
            f();
            return null;
        }
        HashMap hashMap = new HashMap();
        t();
        if (c()) {
            while (true) {
                String f02 = f0();
                List M0 = M0(iLogger, g1Var);
                if (M0 != null) {
                    hashMap.put(f02, M0);
                }
                if (peek() != io.sentry.vendor.gson.stream.b.BEGIN_OBJECT && peek() != io.sentry.vendor.gson.stream.b.NAME) {
                    break;
                }
            }
        }
        r();
        return hashMap;
    }

    @Override // io.sentry.l2
    public Long M() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return Long.valueOf(this.f23260a.E0());
    }

    @Override // io.sentry.l2
    public List M0(ILogger iLogger, g1 g1Var) {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        this.f23260a.a();
        ArrayList arrayList = new ArrayList();
        if (this.f23260a.j()) {
            do {
                try {
                    arrayList.add(g1Var.a(this, iLogger));
                } catch (Exception e10) {
                    iLogger.b(j5.WARNING, "Failed to deserialize object in list.", e10);
                }
            } while (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.BEGIN_OBJECT);
            this.f23260a.f();
            return arrayList;
        }
        this.f23260a.f();
        return arrayList;
    }

    @Override // io.sentry.l2
    public TimeZone Q(ILogger iLogger) {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        try {
            return TimeZone.getTimeZone(this.f23260a.C());
        } catch (Exception e10) {
            iLogger.b(j5.ERROR, "Error when deserializing TimeZone", e10);
            return null;
        }
    }

    @Override // io.sentry.l2
    public float R() {
        return (float) this.f23260a.S();
    }

    @Override // io.sentry.l2
    public double S() {
        return this.f23260a.S();
    }

    @Override // io.sentry.l2
    public String T() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return this.f23260a.C();
    }

    @Override // io.sentry.l2
    public Map Z(ILogger iLogger, g1 g1Var) {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        this.f23260a.t();
        HashMap hashMap = new HashMap();
        if (this.f23260a.j()) {
            while (true) {
                try {
                    hashMap.put(this.f23260a.f0(), g1Var.a(this, iLogger));
                } catch (Exception e10) {
                    iLogger.b(j5.WARNING, "Failed to deserialize object in map.", e10);
                }
                if (this.f23260a.peek() != io.sentry.vendor.gson.stream.b.BEGIN_OBJECT && this.f23260a.peek() != io.sentry.vendor.gson.stream.b.NAME) {
                    break;
                }
            }
        }
        this.f23260a.r();
        return hashMap;
    }

    public void a() {
        this.f23260a.a();
    }

    public void b() {
        this.f23260a.f();
    }

    @Override // io.sentry.l2
    public void b0(ILogger iLogger, Map map, String str) {
        try {
            map.put(str, B0());
        } catch (Exception e10) {
            iLogger.a(j5.ERROR, e10, "Error deserializing unknown key: %s", str);
        }
    }

    public boolean c() {
        return this.f23260a.j();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f23260a.close();
    }

    public boolean e() {
        return this.f23260a.s();
    }

    @Override // io.sentry.l2
    public Double e0() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return Double.valueOf(this.f23260a.S());
    }

    public void f() {
        this.f23260a.v();
    }

    @Override // io.sentry.l2
    public String f0() {
        return this.f23260a.f0();
    }

    @Override // io.sentry.l2
    public Date i0(ILogger iLogger) {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return l2.I0(this.f23260a.C(), iLogger);
    }

    @Override // io.sentry.l2
    public int j0() {
        return this.f23260a.j0();
    }

    @Override // io.sentry.l2
    public Boolean m0() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return Boolean.valueOf(this.f23260a.s());
    }

    @Override // io.sentry.l2
    public void p(boolean z10) {
        this.f23260a.p(z10);
    }

    @Override // io.sentry.l2
    public io.sentry.vendor.gson.stream.b peek() {
        return this.f23260a.peek();
    }

    @Override // io.sentry.l2
    public void r() {
        this.f23260a.r();
    }

    @Override // io.sentry.l2
    public Float r0() {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return Float.valueOf(R());
    }

    @Override // io.sentry.l2
    public void t() {
        this.f23260a.t();
    }

    @Override // io.sentry.l2
    public Object u0(ILogger iLogger, g1 g1Var) {
        if (this.f23260a.peek() == io.sentry.vendor.gson.stream.b.NULL) {
            this.f23260a.v();
            return null;
        }
        return g1Var.a(this, iLogger);
    }
}
