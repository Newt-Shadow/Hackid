package wa;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.math.BigInteger;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.util.Calendar;
import javax.crypto.Cipher;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes.dex */
public class g extends f {
    public g(Context context) {
        super(context);
    }

    @Override // wa.f, wa.a
    public /* bridge */ /* synthetic */ byte[] a(Key key) {
        return super.a(key);
    }

    @Override // wa.f, wa.a
    public /* bridge */ /* synthetic */ Key b(byte[] bArr, String str) {
        return super.b(bArr, str);
    }

    @Override // wa.f
    protected String c() {
        return this.f32006b.getPackageName() + ".FlutterSecureStoragePluginKeyOAEP";
    }

    @Override // wa.f
    protected AlgorithmParameterSpec f() {
        return new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT);
    }

    @Override // wa.f
    protected Cipher i() {
        return Cipher.getInstance("RSA/ECB/OAEPPadding", "AndroidKeyStoreBCWorkaround");
    }

    @Override // wa.f
    protected AlgorithmParameterSpec j(Context context, Calendar calendar, Calendar calendar2) {
        KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder(this.f32005a, 3);
        return builder.setCertificateSubject(new X500Principal("CN=" + this.f32005a)).setDigests("SHA-256").setBlockModes("ECB").setEncryptionPaddings("OAEPPadding").setCertificateSerialNumber(BigInteger.valueOf(1L)).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
    }
}
