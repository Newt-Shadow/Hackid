package n5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import java.util.concurrent.TimeUnit;
import n5.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l0 implements h.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.h f26337a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6.l f26338b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p.a f26339c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ n0 f26340d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(com.google.android.gms.common.api.h hVar, m6.l lVar, p.a aVar, n0 n0Var) {
        this.f26337a = hVar;
        this.f26338b = lVar;
        this.f26339c = aVar;
        this.f26340d = n0Var;
    }

    @Override // com.google.android.gms.common.api.h.a
    public final void a(Status status) {
        if (status.n()) {
            this.f26338b.c(this.f26339c.a(this.f26337a.b(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f26338b.b(b.a(status));
    }
}
