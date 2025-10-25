package g7;

import s6.y;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f16298a;

    private b(a aVar) {
        this.f16298a = aVar;
    }

    public static b a(byte[] bArr, y yVar) {
        if (yVar != null) {
            return new b(a.a(bArr));
        }
        throw new NullPointerException("SecretKeyAccess required");
    }

    public int b() {
        return this.f16298a.c();
    }
}
