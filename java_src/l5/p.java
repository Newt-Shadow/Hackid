package l5;

import android.content.Context;
import android.os.Message;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p extends a6.h {

    /* renamed from: b  reason: collision with root package name */
    private final Context f25321b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f f25322c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p(l5.f r1, android.content.Context r2) {
        /*
            r0 = this;
            r0.f25322c = r1
            android.os.Looper r1 = android.os.Looper.myLooper()
            if (r1 != 0) goto Ld
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            goto L11
        Ld:
            android.os.Looper r1 = android.os.Looper.myLooper()
        L11:
            r0.<init>(r1)
            android.content.Context r1 = r2.getApplicationContext()
            r0.f25321b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l5.p.<init>(l5.f, android.content.Context):void");
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i10);
            return;
        }
        f fVar = this.f25322c;
        int g10 = fVar.g(this.f25321b);
        if (fVar.j(g10)) {
            this.f25322c.o(this.f25321b, g10);
        }
    }
}
