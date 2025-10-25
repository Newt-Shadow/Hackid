package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public abstract class l8 {

    /* renamed from: a  reason: collision with root package name */
    private static k8 f6485a;

    public static synchronized void a(k8 k8Var) {
        synchronized (l8.class) {
            if (f6485a == null) {
                f6485a = k8Var;
            } else {
                throw new IllegalStateException("init() already called");
            }
        }
    }

    public static synchronized k8 b() {
        k8 k8Var;
        synchronized (l8.class) {
            if (f6485a == null) {
                a(new o8());
            }
            k8Var = f6485a;
        }
        return k8Var;
    }
}
