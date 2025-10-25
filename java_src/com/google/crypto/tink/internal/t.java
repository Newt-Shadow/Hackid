package com.google.crypto.tink.internal;

import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Objects;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class t {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f8398a = Charset.forName("UTF-8");

    public static Integer a() {
        if (!b()) {
            return null;
        }
        return a.a();
    }

    public static boolean b() {
        return Objects.equals(System.getProperty("java.vendor"), "The Android Project");
    }

    public static int c() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int i10 = 0;
        while (i10 == 0) {
            secureRandom.nextBytes(bArr);
            i10 = ((bArr[0] & Byte.MAX_VALUE) << 24) | ((bArr[1] & ForkServer.ERROR) << 16) | ((bArr[2] & ForkServer.ERROR) << 8) | (bArr[3] & ForkServer.ERROR);
        }
        return i10;
    }

    private static final byte d(char c10) {
        if (c10 >= '!' && c10 <= '~') {
            return (byte) c10;
        }
        throw new s("Not a printable ASCII character: " + c10);
    }

    public static final g7.a e(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            bArr[i10] = d(str.charAt(i10));
        }
        return g7.a.a(bArr);
    }
}
