package com.google.crypto.tink.shaded.protobuf;
/* loaded from: classes.dex */
abstract class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static final j0 f8503a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final j0 f8504b = new k0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j0 a() {
        return f8503a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j0 b() {
        return f8504b;
    }

    private static j0 c() {
        try {
            return (j0) Class.forName("com.google.crypto.tink.shaded.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
