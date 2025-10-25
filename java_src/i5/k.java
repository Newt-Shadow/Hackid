package i5;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k extends p {

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ Context f17270p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ GoogleSignInOptions f17271q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(com.google.android.gms.common.api.f fVar, Context context, GoogleSignInOptions googleSignInOptions) {
        super(fVar);
        this.f17270p = context;
        this.f17271q = googleSignInOptions;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ com.google.android.gms.common.api.k c(Status status) {
        return new h5.b(null, status);
    }

    @Override // com.google.android.gms.common.api.internal.a
    protected final /* bridge */ /* synthetic */ void k(a.b bVar) {
        ((w) ((i) bVar).D()).h1(new j(this), this.f17271q);
    }
}
