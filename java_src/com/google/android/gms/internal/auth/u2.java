package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
abstract class u2 {

    /* renamed from: a  reason: collision with root package name */
    private static final t2 f6182a;

    /* renamed from: b  reason: collision with root package name */
    private static final t2 f6183b;

    static {
        t2 t2Var;
        try {
            t2Var = (t2) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            t2Var = null;
        }
        f6182a = t2Var;
        f6183b = new t2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t2 a() {
        return f6182a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t2 b() {
        return f6183b;
    }
}
