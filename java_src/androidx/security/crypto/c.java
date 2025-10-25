package androidx.security.crypto;

import android.content.Context;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3456a;

    /* renamed from: b  reason: collision with root package name */
    private final KeyGenParameterSpec f3457b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f3458a;

        /* renamed from: b  reason: collision with root package name */
        KeyGenParameterSpec f3459b;

        /* renamed from: c  reason: collision with root package name */
        b f3460c;

        /* renamed from: d  reason: collision with root package name */
        boolean f3461d;

        /* renamed from: e  reason: collision with root package name */
        int f3462e;

        /* renamed from: f  reason: collision with root package name */
        boolean f3463f;

        /* renamed from: g  reason: collision with root package name */
        final Context f3464g;

        /* renamed from: androidx.security.crypto.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0058a {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: androidx.security.crypto.c$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static class C0059a {
                static void a(KeyGenParameterSpec.Builder builder) {
                    builder.setIsStrongBoxBacked(true);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: androidx.security.crypto.c$a$a$b */
            /* loaded from: classes.dex */
            public static class b {
                static void a(KeyGenParameterSpec.Builder builder, int i10, int i11) {
                    builder.setUserAuthenticationParameters(i10, i11);
                }
            }

            static c a(a aVar) {
                b bVar = aVar.f3460c;
                if (bVar == null && aVar.f3459b == null) {
                    throw new IllegalArgumentException("build() called before setKeyGenParameterSpec or setKeyScheme.");
                }
                if (bVar == b.AES256_GCM) {
                    KeyGenParameterSpec.Builder keySize = new KeyGenParameterSpec.Builder(aVar.f3458a, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256);
                    if (aVar.f3461d) {
                        keySize.setUserAuthenticationRequired(true);
                        if (Build.VERSION.SDK_INT >= 30) {
                            b.a(keySize, aVar.f3462e, 3);
                        } else {
                            keySize.setUserAuthenticationValidityDurationSeconds(aVar.f3462e);
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 28 && aVar.f3463f && aVar.f3464g.getPackageManager().hasSystemFeature("android.hardware.strongbox_keystore")) {
                        C0059a.a(keySize);
                    }
                    aVar.f3459b = keySize.build();
                }
                KeyGenParameterSpec keyGenParameterSpec = aVar.f3459b;
                if (keyGenParameterSpec != null) {
                    return new c(e.c(keyGenParameterSpec), aVar.f3459b);
                }
                throw new NullPointerException("KeyGenParameterSpec was null after build() check");
            }

            static String b(KeyGenParameterSpec keyGenParameterSpec) {
                return keyGenParameterSpec.getKeystoreAlias();
            }
        }

        public a(Context context) {
            this(context, "_androidx_security_master_key_");
        }

        public c a() {
            return C0058a.a(this);
        }

        public a b(KeyGenParameterSpec keyGenParameterSpec) {
            if (this.f3460c == null) {
                if (this.f3458a.equals(C0058a.b(keyGenParameterSpec))) {
                    this.f3459b = keyGenParameterSpec;
                    return this;
                }
                throw new IllegalArgumentException("KeyGenParamSpec's key alias does not match provided alias (" + this.f3458a + " vs " + C0058a.b(keyGenParameterSpec));
            }
            throw new IllegalArgumentException("KeyGenParamSpec set after setting a KeyScheme");
        }

        public a(Context context, String str) {
            this.f3464g = context.getApplicationContext();
            this.f3458a = str;
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        AES256_GCM
    }

    c(String str, Object obj) {
        this.f3456a = str;
        this.f3457b = (KeyGenParameterSpec) obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f3456a;
    }

    public boolean b() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore.containsAlias(this.f3456a);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException unused) {
            return false;
        }
    }

    public String toString() {
        return "MasterKey{keyAlias=" + this.f3456a + ", isKeyStoreBacked=" + b() + "}";
    }
}
