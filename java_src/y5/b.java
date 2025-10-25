package y5;

import android.util.Base64;
import java.security.SecureRandom;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final SecureRandom f33017a = new SecureRandom();

    public static String a() {
        byte[] bArr = new byte[16];
        f33017a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
