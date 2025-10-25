package f7;

import java.security.SecureRandom;
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f15903a = new a();

    /* loaded from: classes.dex */
    class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SecureRandom initialValue() {
            return p.a();
        }
    }

    static /* synthetic */ SecureRandom a() {
        return b();
    }

    private static SecureRandom b() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] c(int i10) {
        byte[] bArr = new byte[i10];
        ((SecureRandom) f15903a.get()).nextBytes(bArr);
        return bArr;
    }
}
