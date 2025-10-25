package com.google.android.gms.measurement.internal;
/* loaded from: classes.dex */
public final class b5 {

    /* renamed from: g  reason: collision with root package name */
    private static final Object f7276g = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final String f7277a;

    /* renamed from: b  reason: collision with root package name */
    private final n0 f7278b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f7279c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f7280d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f7281e = null;

    /* renamed from: f  reason: collision with root package name */
    private volatile Object f7282f = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b5(String str, Object obj, Object obj2, n0 n0Var, byte[] bArr) {
        this.f7277a = str;
        this.f7279c = obj;
        this.f7278b = n0Var;
    }

    public final String a() {
        return this.f7277a;
    }

    public final Object b(Object obj) {
        Object obj2;
        synchronized (this.f7280d) {
        }
        if (obj != null) {
            return obj;
        }
        if (v4.f8105a == null) {
            return this.f7279c;
        }
        synchronized (f7276g) {
            if (f.a()) {
                if (this.f7282f == null) {
                    obj2 = this.f7279c;
                } else {
                    obj2 = this.f7282f;
                }
                return obj2;
            }
            try {
                for (b5 b5Var : c5.b()) {
                    if (!f.a()) {
                        Object obj3 = null;
                        try {
                            n0 n0Var = b5Var.f7278b;
                            if (n0Var != null) {
                                obj3 = n0Var.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f7276g) {
                            b5Var.f7282f = obj3;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException unused2) {
            }
            n0 n0Var2 = this.f7278b;
            if (n0Var2 != null) {
                try {
                    return n0Var2.zza();
                } catch (IllegalStateException | SecurityException unused3) {
                }
            }
            return this.f7279c;
        }
    }
}
