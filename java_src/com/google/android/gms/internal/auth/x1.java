package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
abstract class x1 {

    /* renamed from: a  reason: collision with root package name */
    private static final v1 f6200a = new w1();

    /* renamed from: b  reason: collision with root package name */
    private static final v1 f6201b;

    static {
        v1 v1Var;
        try {
            v1Var = (v1) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            v1Var = null;
        }
        f6201b = v1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v1 a() {
        v1 v1Var = f6201b;
        if (v1Var != null) {
            return v1Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v1 b() {
        return f6200a;
    }
}
