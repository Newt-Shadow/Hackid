package b7;

import a7.g;
import a7.i;
import java.security.GeneralSecurityException;
import x6.b;
/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: b  reason: collision with root package name */
    private static final b.EnumC0366b f4593b = b.EnumC0366b.f32506b;

    /* renamed from: a  reason: collision with root package name */
    private final i f4594a;

    public c(i iVar) {
        if (f4593b.a()) {
            this.f4594a = iVar;
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
