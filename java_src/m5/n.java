package m5;

import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class n extends com.google.android.gms.common.api.g {

    /* renamed from: a  reason: collision with root package name */
    private final BasePendingResult f25839a;

    public n(com.google.android.gms.common.api.h hVar) {
        this.f25839a = (BasePendingResult) hVar;
    }

    @Override // com.google.android.gms.common.api.h
    public final void a(h.a aVar) {
        this.f25839a.a(aVar);
    }

    @Override // com.google.android.gms.common.api.h
    public final com.google.android.gms.common.api.k b(long j10, TimeUnit timeUnit) {
        return this.f25839a.b(j10, timeUnit);
    }
}
