package i5;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m extends p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(com.google.android.gms.common.api.f fVar) {
        super(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.api.k c(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.a
    protected final /* bridge */ /* synthetic */ void k(a.b bVar) {
        i iVar = (i) bVar;
        ((w) iVar.D()).g1(new l(this), iVar.m0());
    }
}
