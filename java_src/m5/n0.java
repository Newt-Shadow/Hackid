package m5;

import android.os.Looper;
/* loaded from: classes.dex */
public final class n0 extends b0 {

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.common.api.e f25840c;

    public n0(com.google.android.gms.common.api.e eVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f25840c = eVar;
    }

    @Override // com.google.android.gms.common.api.f
    public final com.google.android.gms.common.api.internal.a a(com.google.android.gms.common.api.internal.a aVar) {
        return this.f25840c.h(aVar);
    }

    @Override // com.google.android.gms.common.api.f
    public final com.google.android.gms.common.api.internal.a b(com.google.android.gms.common.api.internal.a aVar) {
        return this.f25840c.m(aVar);
    }

    @Override // com.google.android.gms.common.api.f
    public final Looper d() {
        return this.f25840c.t();
    }
}
