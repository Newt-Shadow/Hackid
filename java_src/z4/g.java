package z4;

import android.view.Surface;
/* loaded from: classes.dex */
public class g extends s3.m {

    /* renamed from: c  reason: collision with root package name */
    public final int f33445c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f33446d;

    public g(Throwable th, s3.s sVar, Surface surface) {
        super(th, sVar);
        boolean z10;
        this.f33445c = System.identityHashCode(surface);
        if (surface != null && !surface.isValid()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.f33446d = z10;
    }
}
