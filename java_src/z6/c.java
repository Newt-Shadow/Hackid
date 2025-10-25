package z6;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import f7.p;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Arrays;
import javax.crypto.KeyGenerator;
import s6.r;
/* loaded from: classes.dex */
public final class c implements r {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f33571c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final String f33572d = "c";

    /* renamed from: a  reason: collision with root package name */
    private final String f33573a;

    /* renamed from: b  reason: collision with root package name */
    private KeyStore f33574b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f33575a = null;

        /* renamed from: b  reason: collision with root package name */
        KeyStore f33576b;

        public a() {
            this.f33576b = null;
            if (c.c()) {
                try {
                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                    this.f33576b = keyStore;
                    keyStore.load(null);
                    return;
                } catch (IOException | GeneralSecurityException e10) {
                    throw new IllegalStateException(e10);
                }
            }
            throw new IllegalStateException("need Android Keystore on Android M or newer");
        }
    }

    public c() {
        this(new a());
    }

    static /* synthetic */ boolean c() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(String str) {
        c cVar = new c();
        synchronized (f33571c) {
            if (!cVar.f(str)) {
                e(str);
                return true;
            }
            return false;
        }
    }

    static void e(String str) {
        String b10 = f7.r.b("android-keystore://", str);
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(b10, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
        keyGenerator.generateKey();
    }

    private static boolean g() {
        return true;
    }

    private static void h() {
        try {
            Thread.sleep((int) (Math.random() * 40.0d));
        } catch (InterruptedException unused) {
        }
    }

    private static s6.a i(s6.a aVar) {
        byte[] c10 = p.c(10);
        byte[] bArr = new byte[0];
        if (Arrays.equals(c10, aVar.b(aVar.a(c10, bArr), bArr))) {
            return aVar;
        }
        throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r3.toLowerCase(java.util.Locale.US).startsWith("android-keystore://") != false) goto L14;
     */
    @Override // s6.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean a(java.lang.String r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = r2.f33573a     // Catch: java.lang.Throwable -> L24
            r1 = 1
            if (r0 == 0) goto Le
            boolean r0 = r0.equals(r3)     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto Le
            monitor-exit(r2)
            return r1
        Le:
            java.lang.String r0 = r2.f33573a     // Catch: java.lang.Throwable -> L24
            if (r0 != 0) goto L21
            java.util.Locale r0 = java.util.Locale.US     // Catch: java.lang.Throwable -> L24
            java.lang.String r3 = r3.toLowerCase(r0)     // Catch: java.lang.Throwable -> L24
            java.lang.String r0 = "android-keystore://"
            boolean r3 = r3.startsWith(r0)     // Catch: java.lang.Throwable -> L24
            if (r3 == 0) goto L21
            goto L22
        L21:
            r1 = 0
        L22:
            monitor-exit(r2)
            return r1
        L24:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: z6.c.a(java.lang.String):boolean");
    }

    @Override // s6.r
    public synchronized s6.a b(String str) {
        String str2 = this.f33573a;
        if (str2 != null && !str2.equals(str)) {
            throw new GeneralSecurityException(String.format("this client is bound to %s, cannot load keys bound to %s", this.f33573a, str));
        }
        return i(new b(f7.r.b("android-keystore://", str), this.f33574b));
    }

    synchronized boolean f(String str) {
        String str2;
        try {
        } catch (NullPointerException unused) {
            Log.w(f33572d, "Keystore is temporarily unavailable, wait, reinitialize Keystore and try again.");
            try {
                h();
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f33574b = keyStore;
                keyStore.load(null);
                return this.f33574b.containsAlias(str2);
            } catch (IOException e10) {
                throw new GeneralSecurityException(e10);
            }
        }
        return this.f33574b.containsAlias(f7.r.b("android-keystore://", str));
    }

    private c(a aVar) {
        this.f33573a = aVar.f33575a;
        this.f33574b = aVar.f33576b;
    }
}
