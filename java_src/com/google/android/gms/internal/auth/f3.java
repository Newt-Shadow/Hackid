package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
abstract class f3 {

    /* renamed from: a  reason: collision with root package name */
    private static final e3 f6014a;

    /* renamed from: b  reason: collision with root package name */
    private static final e3 f6015b;

    static {
        e3 e3Var;
        try {
            e3Var = (e3) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            e3Var = null;
        }
        f6014a = e3Var;
        f6015b = new e3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e3 a() {
        return f6014a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e3 b() {
        return f6015b;
    }
}
