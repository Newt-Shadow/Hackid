package b7;

import a7.g;
import java.security.GeneralSecurityException;
import x6.b;
/* loaded from: classes.dex */
public final class b implements g {

    /* renamed from: b  reason: collision with root package name */
    private static final b.EnumC0366b f4591b = b.EnumC0366b.f32505a;

    /* renamed from: a  reason: collision with root package name */
    private final a7.a f4592a;

    public b(a7.a aVar) {
        if (f4591b.a()) {
            this.f4592a = aVar;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }
}
