package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
abstract class b3 {

    /* renamed from: a  reason: collision with root package name */
    private static final a3 f6955a;

    /* renamed from: b  reason: collision with root package name */
    private static final a3 f6956b;

    static {
        a3 a3Var;
        try {
            a3Var = (a3) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            a3Var = null;
        }
        f6955a = a3Var;
        f6956b = new a3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a3 a() {
        return f6955a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a3 b() {
        return f6956b;
    }
}
