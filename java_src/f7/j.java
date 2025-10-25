package f7;

import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
/* loaded from: classes.dex */
public interface j {

    /* loaded from: classes.dex */
    public static class a implements j {
        @Override // f7.j
        /* renamed from: b */
        public Cipher a(String str, Provider provider) {
            if (provider == null) {
                return Cipher.getInstance(str);
            }
            return Cipher.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements j {
        @Override // f7.j
        /* renamed from: b */
        public KeyAgreement a(String str, Provider provider) {
            if (provider == null) {
                return KeyAgreement.getInstance(str);
            }
            return KeyAgreement.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class c implements j {
        @Override // f7.j
        /* renamed from: b */
        public KeyFactory a(String str, Provider provider) {
            if (provider == null) {
                return KeyFactory.getInstance(str);
            }
            return KeyFactory.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class d implements j {
        @Override // f7.j
        /* renamed from: b */
        public KeyPairGenerator a(String str, Provider provider) {
            if (provider == null) {
                return KeyPairGenerator.getInstance(str);
            }
            return KeyPairGenerator.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class e implements j {
        @Override // f7.j
        /* renamed from: b */
        public Mac a(String str, Provider provider) {
            if (provider == null) {
                return Mac.getInstance(str);
            }
            return Mac.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class f implements j {
        @Override // f7.j
        /* renamed from: b */
        public MessageDigest a(String str, Provider provider) {
            if (provider == null) {
                return MessageDigest.getInstance(str);
            }
            return MessageDigest.getInstance(str, provider);
        }
    }

    /* loaded from: classes.dex */
    public static class g implements j {
        @Override // f7.j
        /* renamed from: b */
        public Signature a(String str, Provider provider) {
            if (provider == null) {
                return Signature.getInstance(str);
            }
            return Signature.getInstance(str, provider);
        }
    }

    Object a(String str, Provider provider);
}
