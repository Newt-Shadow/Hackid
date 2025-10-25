package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
abstract class t1 {

    /* renamed from: a  reason: collision with root package name */
    private static final r1 f7115a = new s1();

    /* renamed from: b  reason: collision with root package name */
    private static final r1 f7116b;

    static {
        r1 r1Var;
        try {
            r1Var = (r1) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            r1Var = null;
        }
        f7116b = r1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r1 a() {
        r1 r1Var = f7116b;
        if (r1Var != null) {
            return r1Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r1 b() {
        return f7115a;
    }
}
