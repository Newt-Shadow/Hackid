package x4;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes.dex */
public class y extends k {

    /* renamed from: b  reason: collision with root package name */
    public final n f32479b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32480c;

    public y(n nVar, int i10, int i11) {
        super(b(i10, i11));
        this.f32479b = nVar;
        this.f32480c = i11;
    }

    private static int b(int i10, int i11) {
        if (i10 == 2000 && i11 == 1) {
            return 2001;
        }
        return i10;
    }

    public static y c(IOException iOException, n nVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else if (message != null && n6.c.e(message).matches("cleartext.*not permitted.*")) {
            i11 = 2007;
        } else {
            i11 = 2001;
        }
        if (i11 == 2007) {
            return new x(iOException, nVar);
        }
        return new y(iOException, nVar, i11, i10);
    }

    public y(String str, n nVar, int i10, int i11) {
        super(str, b(i10, i11));
        this.f32479b = nVar;
        this.f32480c = i11;
    }

    public y(IOException iOException, n nVar, int i10, int i11) {
        super(iOException, b(i10, i11));
        this.f32479b = nVar;
        this.f32480c = i11;
    }

    public y(String str, IOException iOException, n nVar, int i10, int i11) {
        super(str, iOException, b(i10, i11));
        this.f32479b = nVar;
        this.f32480c = i11;
    }
}
