package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.Deque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class o implements l2 {

    /* renamed from: a  reason: collision with root package name */
    private final Deque f23793a;

    public o(Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f23793a = arrayDeque;
        arrayDeque.addLast(new AbstractMap.SimpleEntry(null, map));
    }

    private Object f() {
        try {
            return g(null, null);
        } catch (Exception e10) {
            throw new IOException(e10);
        }
    }

    private Object g(ILogger iLogger, g1 g1Var) {
        Map.Entry entry = (Map.Entry) this.f23793a.peekLast();
        if (entry == null) {
            return null;
        }
        Object value = entry.getValue();
        if (g1Var != null && iLogger != null) {
            return g1Var.a(this, iLogger);
        }
        this.f23793a.removeLast();
        return value;
    }

    @Override // io.sentry.l2
    public Object B0() {
        return f();
    }

    @Override // io.sentry.l2
    public String C() {
        String str = (String) f();
        if (str != null) {
            return str;
        }
        throw new IOException("Expected string");
    }

    @Override // io.sentry.l2
    public long E0() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return ((Number) f10).longValue();
        }
        throw new IOException("Expected long");
    }

    @Override // io.sentry.l2
    public void G() {
    }

    @Override // io.sentry.l2
    public Integer J() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return Integer.valueOf(((Number) f10).intValue());
        }
        return null;
    }

    @Override // io.sentry.l2
    public Map L(ILogger iLogger, g1 g1Var) {
        if (peek() == io.sentry.vendor.gson.stream.b.NULL) {
            e();
            return null;
        }
        HashMap hashMap = new HashMap();
        try {
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
        } catch (Exception e10) {
            throw new IOException(e10);
        }
    }

    @Override // io.sentry.l2
    public Long M() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return Long.valueOf(((Number) f10).longValue());
        }
        return null;
    }

    @Override // io.sentry.l2
    public List M0(ILogger iLogger, g1 g1Var) {
        if (peek() == io.sentry.vendor.gson.stream.b.NULL) {
            e();
            return null;
        }
        try {
            a();
            ArrayList arrayList = new ArrayList();
            if (c()) {
                do {
                    try {
                        arrayList.add(g1Var.a(this, iLogger));
                    } catch (Exception e10) {
                        iLogger.b(j5.WARNING, "Failed to deserialize object in list.", e10);
                    }
                } while (peek() == io.sentry.vendor.gson.stream.b.BEGIN_OBJECT);
                b();
                return arrayList;
            }
            b();
            return arrayList;
        } catch (Exception e11) {
            throw new IOException(e11);
        }
        throw new IOException(e11);
    }

    @Override // io.sentry.l2
    public TimeZone Q(ILogger iLogger) {
        String T = T();
        if (T != null) {
            return TimeZone.getTimeZone(T);
        }
        return null;
    }

    @Override // io.sentry.l2
    public float R() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return ((Number) f10).floatValue();
        }
        throw new IOException("Expected float");
    }

    @Override // io.sentry.l2
    public double S() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return ((Number) f10).doubleValue();
        }
        throw new IOException("Expected double");
    }

    @Override // io.sentry.l2
    public String T() {
        return (String) f();
    }

    @Override // io.sentry.l2
    public Map Z(ILogger iLogger, g1 g1Var) {
        if (peek() == io.sentry.vendor.gson.stream.b.NULL) {
            e();
            return null;
        }
        try {
            t();
            HashMap hashMap = new HashMap();
            if (c()) {
                while (true) {
                    try {
                        hashMap.put(f0(), g1Var.a(this, iLogger));
                    } catch (Exception e10) {
                        iLogger.b(j5.WARNING, "Failed to deserialize object in map.", e10);
                    }
                    if (peek() != io.sentry.vendor.gson.stream.b.BEGIN_OBJECT && peek() != io.sentry.vendor.gson.stream.b.NAME) {
                        break;
                    }
                }
            }
            r();
            return hashMap;
        } catch (Exception e11) {
            throw new IOException(e11);
        }
    }

    public void a() {
        Map.Entry entry = (Map.Entry) this.f23793a.removeLast();
        if (entry != null) {
            Object value = entry.getValue();
            if (value instanceof List) {
                this.f23793a.addLast(new AbstractMap.SimpleEntry(null, io.sentry.vendor.gson.stream.b.END_ARRAY));
                List list = (List) value;
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f23793a.addLast(new AbstractMap.SimpleEntry(null, list.get(size)));
                }
                return;
            }
            throw new IOException("Current token is not an object");
        }
        throw new IOException("No more entries");
    }

    public void b() {
        if (this.f23793a.size() > 1) {
            this.f23793a.removeLast();
        }
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
        return !this.f23793a.isEmpty();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f23793a.clear();
    }

    public void e() {
        if (f() == null) {
            return;
        }
        throw new IOException("Expected null but was " + peek());
    }

    @Override // io.sentry.l2
    public Double e0() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return Double.valueOf(((Number) f10).doubleValue());
        }
        return null;
    }

    @Override // io.sentry.l2
    public String f0() {
        Map.Entry entry = (Map.Entry) this.f23793a.peekLast();
        if (entry != null && entry.getKey() != null) {
            return (String) entry.getKey();
        }
        throw new IOException("Expected a name but was " + peek());
    }

    @Override // io.sentry.l2
    public Date i0(ILogger iLogger) {
        return l2.I0(T(), iLogger);
    }

    @Override // io.sentry.l2
    public int j0() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return ((Number) f10).intValue();
        }
        throw new IOException("Expected int");
    }

    @Override // io.sentry.l2
    public Boolean m0() {
        return (Boolean) f();
    }

    @Override // io.sentry.l2
    public void p(boolean z10) {
    }

    @Override // io.sentry.l2
    public io.sentry.vendor.gson.stream.b peek() {
        if (this.f23793a.isEmpty()) {
            return io.sentry.vendor.gson.stream.b.END_DOCUMENT;
        }
        Map.Entry entry = (Map.Entry) this.f23793a.peekLast();
        if (entry == null) {
            return io.sentry.vendor.gson.stream.b.END_DOCUMENT;
        }
        if (entry.getKey() != null) {
            return io.sentry.vendor.gson.stream.b.NAME;
        }
        Object value = entry.getValue();
        if (value instanceof Map) {
            return io.sentry.vendor.gson.stream.b.BEGIN_OBJECT;
        }
        if (value instanceof List) {
            return io.sentry.vendor.gson.stream.b.BEGIN_ARRAY;
        }
        if (value instanceof String) {
            return io.sentry.vendor.gson.stream.b.STRING;
        }
        if (value instanceof Number) {
            return io.sentry.vendor.gson.stream.b.NUMBER;
        }
        if (value instanceof Boolean) {
            return io.sentry.vendor.gson.stream.b.BOOLEAN;
        }
        if (value instanceof io.sentry.vendor.gson.stream.b) {
            return (io.sentry.vendor.gson.stream.b) value;
        }
        return io.sentry.vendor.gson.stream.b.END_DOCUMENT;
    }

    @Override // io.sentry.l2
    public void r() {
        if (this.f23793a.size() > 1) {
            this.f23793a.removeLast();
        }
    }

    @Override // io.sentry.l2
    public Float r0() {
        Object f10 = f();
        if (f10 instanceof Number) {
            return Float.valueOf(((Number) f10).floatValue());
        }
        return null;
    }

    @Override // io.sentry.l2
    public void t() {
        Map.Entry entry = (Map.Entry) this.f23793a.removeLast();
        if (entry != null) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                this.f23793a.addLast(new AbstractMap.SimpleEntry(null, io.sentry.vendor.gson.stream.b.END_OBJECT));
                for (Map.Entry entry2 : ((Map) value).entrySet()) {
                    this.f23793a.addLast(entry2);
                }
                return;
            }
            throw new IOException("Current token is not an object");
        }
        throw new IOException("No more entries");
    }

    @Override // io.sentry.l2
    public Object u0(ILogger iLogger, g1 g1Var) {
        return g(iLogger, g1Var);
    }
}
