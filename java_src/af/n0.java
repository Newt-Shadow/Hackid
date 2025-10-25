package af;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class n0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f420a = Logger.getLogger("okio.Okio");

    public static final boolean b(AssertionError assertionError) {
        boolean z10;
        kotlin.jvm.internal.m.e(assertionError, "<this>");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        if (message != null) {
            z10 = rd.b0.N(message, "getsockname failed", false, 2, null);
        } else {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        return true;
    }

    public static final y0 c(Socket socket) {
        kotlin.jvm.internal.m.e(socket, "<this>");
        z0 z0Var = new z0(socket);
        OutputStream outputStream = socket.getOutputStream();
        kotlin.jvm.internal.m.d(outputStream, "getOutputStream()");
        return z0Var.z(new q0(outputStream, z0Var));
    }

    public static final a1 d(File file) {
        kotlin.jvm.internal.m.e(file, "<this>");
        return new r(new FileInputStream(file), b1.f354e);
    }

    public static final a1 e(InputStream inputStream) {
        kotlin.jvm.internal.m.e(inputStream, "<this>");
        return new r(inputStream, new b1());
    }

    public static final a1 f(Socket socket) {
        kotlin.jvm.internal.m.e(socket, "<this>");
        z0 z0Var = new z0(socket);
        InputStream inputStream = socket.getInputStream();
        kotlin.jvm.internal.m.d(inputStream, "getInputStream()");
        return z0Var.A(new r(inputStream, z0Var));
    }
}
