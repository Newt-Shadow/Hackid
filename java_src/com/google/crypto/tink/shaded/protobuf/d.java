package com.google.crypto.tink.shaded.protobuf;
/* loaded from: classes.dex */
abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f8427a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f8428b = a("libcore.io.Memory");

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f8429c;

    static {
        boolean z10;
        if (!f8427a && a("org.robolectric.Robolectric") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        f8429c = z10;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class b() {
        return f8428b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        if (!f8427a && (f8428b == null || f8429c)) {
            return false;
        }
        return true;
    }
}
