package io.sentry.android.replay.util;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f22812a;

    public i(Looper looper) {
        kotlin.jvm.internal.m.e(looper, "looper");
        this.f22812a = new Handler(looper);
    }

    public final Handler a() {
        return this.f22812a;
    }

    public final void b(Runnable runnable) {
        kotlin.jvm.internal.m.e(runnable, "runnable");
        this.f22812a.post(runnable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ i(android.os.Looper r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
        /*
            r0 = this;
            r2 = r2 & 1
            if (r2 == 0) goto Ld
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            java.lang.String r2 = "getMainLooper()"
            kotlin.jvm.internal.m.d(r1, r2)
        Ld:
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.util.i.<init>(android.os.Looper, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
