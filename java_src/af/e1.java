package af;

import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2.dex */
public abstract class e1 {
    public static final byte[] a(String str) {
        kotlin.jvm.internal.m.e(str, "<this>");
        byte[] bytes = str.getBytes(rd.d.f29089b);
        kotlin.jvm.internal.m.d(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final ReentrantLock b() {
        return new ReentrantLock();
    }

    public static final String c(byte[] bArr) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        return new String(bArr, rd.d.f29089b);
    }
}
