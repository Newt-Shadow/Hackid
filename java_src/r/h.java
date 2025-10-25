package r;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private int f28826a;

    /* renamed from: b  reason: collision with root package name */
    private final s.c f28827b;

    /* renamed from: c  reason: collision with root package name */
    private final s.b f28828c;

    /* renamed from: d  reason: collision with root package name */
    private int f28829d;

    /* renamed from: e  reason: collision with root package name */
    private int f28830e;

    /* renamed from: f  reason: collision with root package name */
    private int f28831f;

    /* renamed from: g  reason: collision with root package name */
    private int f28832g;

    /* renamed from: h  reason: collision with root package name */
    private int f28833h;

    /* renamed from: i  reason: collision with root package name */
    private int f28834i;

    public h(int i10) {
        boolean z10;
        this.f28826a = i10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f28827b = new s.c(0, 0.75f);
            this.f28828c = new s.b();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    private final int f(Object obj, Object obj2) {
        boolean z10;
        int g10 = g(obj, obj2);
        if (g10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return g10;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    protected Object a(Object key) {
        m.e(key, "key");
        return null;
    }

    protected void b(boolean z10, Object key, Object oldValue, Object obj) {
        m.e(key, "key");
        m.e(oldValue, "oldValue");
    }

    public final Object c(Object key) {
        Object d10;
        m.e(key, "key");
        synchronized (this.f28828c) {
            Object a10 = this.f28827b.a(key);
            if (a10 != null) {
                this.f28833h++;
                return a10;
            }
            this.f28834i++;
            Object a11 = a(key);
            if (a11 == null) {
                return null;
            }
            synchronized (this.f28828c) {
                this.f28831f++;
                d10 = this.f28827b.d(key, a11);
                if (d10 != null) {
                    this.f28827b.d(key, d10);
                } else {
                    this.f28829d += f(key, a11);
                    t tVar = t.f32733a;
                }
            }
            if (d10 != null) {
                b(false, key, a11, d10);
                return d10;
            }
            i(this.f28826a);
            return a11;
        }
    }

    public final Object d(Object key, Object value) {
        Object d10;
        m.e(key, "key");
        m.e(value, "value");
        synchronized (this.f28828c) {
            this.f28830e++;
            this.f28829d += f(key, value);
            d10 = this.f28827b.d(key, value);
            if (d10 != null) {
                this.f28829d -= f(key, d10);
            }
            t tVar = t.f32733a;
        }
        if (d10 != null) {
            b(false, key, d10, value);
        }
        i(this.f28826a);
        return d10;
    }

    public final Object e(Object key) {
        Object e10;
        m.e(key, "key");
        synchronized (this.f28828c) {
            e10 = this.f28827b.e(key);
            if (e10 != null) {
                this.f28829d -= f(key, e10);
            }
            t tVar = t.f32733a;
        }
        if (e10 != null) {
            b(false, key, e10, null);
        }
        return e10;
    }

    protected int g(Object key, Object value) {
        m.e(key, "key");
        m.e(value, "value");
        return 1;
    }

    public final Map h() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (this.f28828c) {
            for (Map.Entry entry : this.f28827b.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            t tVar = t.f32733a;
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!".toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(int r7) {
        /*
            r6 = this;
        L0:
            s.b r0 = r6.f28828c
            monitor-enter(r0)
            int r1 = r6.f28829d     // Catch: java.lang.Throwable -> L65
            r2 = 1
            if (r1 < 0) goto L16
            s.c r1 = r6.f28827b     // Catch: java.lang.Throwable -> L65
            boolean r1 = r1.c()     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L14
            int r1 = r6.f28829d     // Catch: java.lang.Throwable -> L65
            if (r1 != 0) goto L16
        L14:
            r1 = r2
            goto L17
        L16:
            r1 = 0
        L17:
            if (r1 == 0) goto L59
            int r1 = r6.f28829d     // Catch: java.lang.Throwable -> L65
            if (r1 <= r7) goto L57
            s.c r1 = r6.f28827b     // Catch: java.lang.Throwable -> L65
            boolean r1 = r1.c()     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L26
            goto L57
        L26:
            s.c r1 = r6.f28827b     // Catch: java.lang.Throwable -> L65
            java.util.Set r1 = r1.b()     // Catch: java.lang.Throwable -> L65
            java.lang.Object r1 = yc.m.P(r1)     // Catch: java.lang.Throwable -> L65
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L65
            if (r1 != 0) goto L36
            monitor-exit(r0)
            return
        L36:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> L65
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L65
            s.c r4 = r6.f28827b     // Catch: java.lang.Throwable -> L65
            r4.e(r3)     // Catch: java.lang.Throwable -> L65
            int r4 = r6.f28829d     // Catch: java.lang.Throwable -> L65
            int r5 = r6.f(r3, r1)     // Catch: java.lang.Throwable -> L65
            int r4 = r4 - r5
            r6.f28829d = r4     // Catch: java.lang.Throwable -> L65
            int r4 = r6.f28832g     // Catch: java.lang.Throwable -> L65
            int r4 = r4 + r2
            r6.f28832g = r4     // Catch: java.lang.Throwable -> L65
            monitor-exit(r0)
            r0 = 0
            r6.b(r2, r3, r1, r0)
            goto L0
        L57:
            monitor-exit(r0)
            return
        L59:
            java.lang.String r7 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L65
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L65
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L65
            throw r1     // Catch: java.lang.Throwable -> L65
        L65:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: r.h.i(int):void");
    }

    public String toString() {
        int i10;
        String str;
        synchronized (this.f28828c) {
            int i11 = this.f28833h;
            int i12 = this.f28834i + i11;
            if (i12 != 0) {
                i10 = (i11 * 100) / i12;
            } else {
                i10 = 0;
            }
            str = "LruCache[maxSize=" + this.f28826a + ",hits=" + this.f28833h + ",misses=" + this.f28834i + ",hitRate=" + i10 + "%]";
        }
        return str;
    }
}
