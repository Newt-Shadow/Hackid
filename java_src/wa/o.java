package wa;

import android.content.Context;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
/* loaded from: classes.dex */
public class o extends h {
    public o(Context context, a aVar) {
        super(context, aVar);
    }

    @Override // wa.h
    protected String b() {
        return "VGhpcyBpcyB0aGUga2V5IGZvcihBIHNlY3XyZZBzdG9yYWdlIEFFUyBLZXkK";
    }

    @Override // wa.h
    protected Cipher c() {
        return Cipher.getInstance("AES/GCM/NoPadding");
    }

    @Override // wa.h
    protected int d() {
        return 12;
    }

    @Override // wa.h
    protected AlgorithmParameterSpec e(byte[] bArr) {
        return new GCMParameterSpec(128, bArr);
    }
}
