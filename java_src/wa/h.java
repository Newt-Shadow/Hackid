package wa;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public class h implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Cipher f32007a;

    /* renamed from: b  reason: collision with root package name */
    private final SecureRandom f32008b = new SecureRandom();

    /* renamed from: c  reason: collision with root package name */
    private Key f32009c;

    public h(Context context, a aVar) {
        String b10 = b();
        SharedPreferences sharedPreferences = context.getSharedPreferences("FlutterSecureKeyStorage", 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        String string = sharedPreferences.getString(b10, null);
        this.f32007a = c();
        if (string != null) {
            try {
                this.f32009c = aVar.b(Base64.decode(string, 0), "AES");
                return;
            } catch (Exception e10) {
                Log.e("StorageCipher18Impl", "unwrap key failed", e10);
            }
        }
        byte[] bArr = new byte[16];
        this.f32008b.nextBytes(bArr);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f32009c = secretKeySpec;
        edit.putString(b10, Base64.encodeToString(aVar.a(secretKeySpec), 0));
        edit.apply();
    }

    @Override // wa.i
    public byte[] a(byte[] bArr) {
        int d10 = d();
        byte[] bArr2 = new byte[d10];
        System.arraycopy(bArr, 0, bArr2, 0, d10);
        AlgorithmParameterSpec e10 = e(bArr2);
        int length = bArr.length - d();
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, d10, bArr3, 0, length);
        this.f32007a.init(2, this.f32009c, e10);
        return this.f32007a.doFinal(bArr3);
    }

    protected String b() {
        return "VGhpcyBpcyB0aGUga2V5IGZvciBhIHNlY3VyZSBzdG9yYWdlIEFFUyBLZXkK";
    }

    protected Cipher c() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    protected int d() {
        return 16;
    }

    protected AlgorithmParameterSpec e(byte[] bArr) {
        return new IvParameterSpec(bArr);
    }

    @Override // wa.i
    public byte[] encrypt(byte[] bArr) {
        int d10 = d();
        byte[] bArr2 = new byte[d10];
        this.f32008b.nextBytes(bArr2);
        this.f32007a.init(1, this.f32009c, e(bArr2));
        byte[] doFinal = this.f32007a.doFinal(bArr);
        byte[] bArr3 = new byte[doFinal.length + d10];
        System.arraycopy(bArr2, 0, bArr3, 0, d10);
        System.arraycopy(doFinal, 0, bArr3, d10, doFinal.length);
        return bArr3;
    }
}
