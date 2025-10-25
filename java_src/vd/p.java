package vd;

import java.util.concurrent.CancellationException;
import td.i1;
/* loaded from: classes2.dex */
abstract /* synthetic */ class p {
    public static final void a(w wVar, Throwable th) {
        CancellationException cancellationException = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                cancellationException = (CancellationException) th;
            }
            if (cancellationException == null) {
                cancellationException = i1.a("Channel was consumed, consumer had failed", th);
            }
        }
        wVar.b(cancellationException);
    }
}
