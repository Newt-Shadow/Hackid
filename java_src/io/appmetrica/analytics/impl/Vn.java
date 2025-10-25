package io.appmetrica.analytics.impl;

import java.util.UUID;
/* loaded from: classes2.dex */
public final class Vn {
    public static boolean a(String str) {
        UUID uuid;
        if (str == null || str.length() != 32) {
            return false;
        }
        try {
            uuid = UUID.fromString(b(str));
        } catch (Throwable unused) {
            uuid = null;
        }
        if (uuid == null) {
            return false;
        }
        return true;
    }

    public static String b(String str) {
        return str.substring(0, 8) + "-" + str.substring(8, 12) + "-" + str.substring(12, 16) + "-" + str.substring(16, 20) + "-" + str.substring(20, 32);
    }
}
