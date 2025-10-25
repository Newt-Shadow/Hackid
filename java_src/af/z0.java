package af;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z0 extends c {

    /* renamed from: o  reason: collision with root package name */
    private final Socket f469o;

    public z0(Socket socket) {
        kotlin.jvm.internal.m.e(socket, "socket");
        this.f469o = socket;
    }

    @Override // af.c
    protected void B() {
        Logger logger;
        Logger logger2;
        try {
            this.f469o.close();
        } catch (AssertionError e10) {
            if (m0.c(e10)) {
                logger2 = n0.f420a;
                Level level = Level.WARNING;
                logger2.log(level, "Failed to close timed out socket " + this.f469o, (Throwable) e10);
                return;
            }
            throw e10;
        } catch (Exception e11) {
            logger = n0.f420a;
            Level level2 = Level.WARNING;
            logger.log(level2, "Failed to close timed out socket " + this.f469o, (Throwable) e11);
        }
    }

    @Override // af.c
    protected IOException x(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
