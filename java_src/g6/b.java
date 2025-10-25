package g6;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.location.LocationRequest;
import m6.Task;
/* loaded from: classes.dex */
public class b extends com.google.android.gms.common.api.e {
    public b(Context context) {
        super(context, d.f16264a, a.d.f5879i0, new m5.a());
    }

    private final Task E(final d6.p pVar, final LocationCallback locationCallback, Looper looper, final j jVar, int i10) {
        final m5.j a10 = m5.k.a(locationCallback, d6.v.a(looper), LocationCallback.class.getSimpleName());
        final g gVar = new g(this, a10);
        return j(m5.p.a().b(new m5.q(this, gVar, locationCallback, jVar, pVar, a10) { // from class: g6.f

            /* renamed from: a  reason: collision with root package name */
            private final b f16270a;

            /* renamed from: b  reason: collision with root package name */
            private final l f16271b;

            /* renamed from: c  reason: collision with root package name */
            private final LocationCallback f16272c;

            /* renamed from: d  reason: collision with root package name */
            private final j f16273d;

            /* renamed from: e  reason: collision with root package name */
            private final d6.p f16274e;

            /* renamed from: f  reason: collision with root package name */
            private final m5.j f16275f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16270a = this;
                this.f16271b = gVar;
                this.f16272c = locationCallback;
                this.f16273d = jVar;
                this.f16274e = pVar;
                this.f16275f = a10;
            }

            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                this.f16270a.C(this.f16271b, this.f16272c, this.f16273d, this.f16274e, this.f16275f, (d6.n) obj, (m6.l) obj2);
            }
        }).d(gVar).e(a10).c(i10).a());
    }

    public Task A(LocationCallback locationCallback) {
        return m5.v.c(k(m5.k.b(locationCallback, LocationCallback.class.getSimpleName())));
    }

    public Task B(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        return E(d6.p.g(null, locationRequest), locationCallback, looper, null, 2436);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void C(final l lVar, final LocationCallback locationCallback, final j jVar, d6.p pVar, m5.j jVar2, d6.n nVar, m6.l lVar2) {
        i iVar = new i(lVar2, new j(this, lVar, locationCallback, jVar) { // from class: g6.x

            /* renamed from: a  reason: collision with root package name */
            private final b f16293a;

            /* renamed from: b  reason: collision with root package name */
            private final l f16294b;

            /* renamed from: c  reason: collision with root package name */
            private final LocationCallback f16295c;

            /* renamed from: d  reason: collision with root package name */
            private final j f16296d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16293a = this;
                this.f16294b = lVar;
                this.f16295c = locationCallback;
                this.f16296d = jVar;
            }

            @Override // g6.j
            public final void zza() {
                b bVar = this.f16293a;
                l lVar3 = this.f16294b;
                LocationCallback locationCallback2 = this.f16295c;
                j jVar3 = this.f16296d;
                lVar3.c(false);
                bVar.A(locationCallback2);
                if (jVar3 != null) {
                    jVar3.zza();
                }
            }
        });
        pVar.i(s());
        nVar.n0(pVar, jVar2, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void D(d6.n nVar, m6.l lVar) {
        lVar.c(nVar.p0(s()));
    }

    public Task z() {
        return i(m5.u.a().b(new m5.q(this) { // from class: g6.w

            /* renamed from: a  reason: collision with root package name */
            private final b f16292a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16292a = this;
            }

            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                this.f16292a.D((d6.n) obj, (m6.l) obj2);
            }
        }).e(2414).a());
    }
}
