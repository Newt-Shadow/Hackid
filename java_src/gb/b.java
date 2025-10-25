package gb;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f16344a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f16345b;

    public b(Looper mainLooper) {
        kotlin.jvm.internal.m.e(mainLooper, "mainLooper");
        this.f16344a = mainLooper;
        this.f16345b = new Handler(mainLooper);
    }

    public final Handler a() {
        return this.f16345b;
    }

    public final Looper b() {
        return this.f16344a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ b(android.os.Looper r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: gb.b.<init>(android.os.Looper, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
