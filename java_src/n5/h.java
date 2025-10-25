package n5;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class h extends c implements a.f {
    private final e F;
    private final Set G;
    private final Account H;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(Context context, Looper looper, int i10, e eVar, f.a aVar, f.b bVar) {
        this(context, looper, i10, eVar, (m5.d) aVar, (m5.m) bVar);
    }

    private final Set l0(Set set) {
        Set<Scope> k02 = k0(set);
        for (Scope scope : k02) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return k02;
    }

    @Override // n5.c
    protected final Set C() {
        return this.G;
    }

    @Override // com.google.android.gms.common.api.a.f
    public Set b() {
        if (o()) {
            return this.G;
        }
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e j0() {
        return this.F;
    }

    protected Set k0(Set set) {
        return set;
    }

    @Override // n5.c
    public final Account u() {
        return this.H;
    }

    @Override // n5.c
    protected Executor w() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(Context context, Looper looper, int i10, e eVar, m5.d dVar, m5.m mVar) {
        this(context, looper, i.b(context), l5.f.m(), i10, eVar, (m5.d) q.k(dVar), (m5.m) q.k(mVar));
    }

    protected h(Context context, Looper looper, i iVar, l5.f fVar, int i10, e eVar, m5.d dVar, m5.m mVar) {
        super(context, looper, iVar, fVar, i10, dVar == null ? null : new g0(dVar), mVar == null ? null : new h0(mVar), eVar.j());
        this.F = eVar;
        this.H = eVar.a();
        this.G = l0(eVar.d());
    }
}
