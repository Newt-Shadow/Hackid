package cf;

import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class i extends a {

    /* renamed from: a  reason: collision with root package name */
    private final Serializable f5214a;

    public i(IOException iOException, Serializable serializable) {
        super(iOException.getMessage(), iOException);
        this.f5214a = serializable;
    }

    public static boolean b(Throwable th, Object obj) {
        if (obj != null && (th instanceof i) && obj.equals(((i) th).f5214a)) {
            return true;
        }
        return false;
    }

    public static void c(Throwable th, Object obj) {
        if (!b(th, obj)) {
            return;
        }
        throw ((i) th).getCause();
    }

    @Override // java.lang.Throwable
    /* renamed from: a */
    public synchronized IOException getCause() {
        return (IOException) super.getCause();
    }
}
