package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends com.google.android.gms.common.api.e implements b3 {

    /* renamed from: l  reason: collision with root package name */
    private static final a.g f5971l;

    /* renamed from: m  reason: collision with root package name */
    private static final a.AbstractC0097a f5972m;

    /* renamed from: n  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f5973n;

    /* renamed from: o  reason: collision with root package name */
    private static final q5.a f5974o;

    /* renamed from: k  reason: collision with root package name */
    private final Context f5975k;

    static {
        a.g gVar = new a.g();
        f5971l = gVar;
        v4 v4Var = new v4();
        f5972m = v4Var;
        f5973n = new com.google.android.gms.common.api.a("GoogleAuthService.API", v4Var, gVar);
        f5974o = d5.d.a("GoogleAuthServiceClient");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        super(context, f5973n, a.d.f5879i0, e.a.f5890c);
        this.f5975k = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void z(Status status, Object obj, m6.l lVar) {
        if (!m5.v.d(status, obj, lVar)) {
            f5974o.e("The task is already complete.", new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.auth.b3
    public final Task b(final Account account, final String str, final Bundle bundle) {
        n5.q.l(account, "Account name cannot be null!");
        n5.q.f(str, "Scope cannot be null!");
        return n(m5.u.a().d(d5.e.f15001l).b(new m5.q() { // from class: com.google.android.gms.internal.auth.t4
            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                b bVar = b.this;
                ((s4) ((p4) obj).D()).h1(new w4(bVar, (m6.l) obj2), account, str, bundle);
            }
        }).e(1512).a());
    }

    @Override // com.google.android.gms.internal.auth.b3
    public final Task d(final g gVar) {
        return n(m5.u.a().d(d5.e.f15001l).b(new m5.q() { // from class: com.google.android.gms.internal.auth.u4
            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                b bVar = b.this;
                ((s4) ((p4) obj).D()).g1(new x4(bVar, (m6.l) obj2), gVar);
            }
        }).e(1513).a());
    }
}
