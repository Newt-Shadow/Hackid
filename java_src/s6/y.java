package s6;

import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final y f29469a = new y();

    private y() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y a() {
        return f29469a;
    }

    public static y b(y yVar) {
        if (yVar != null) {
            return yVar;
        }
        throw new GeneralSecurityException("SecretKeyAccess is required");
    }
}
