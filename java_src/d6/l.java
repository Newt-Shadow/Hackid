package d6;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
/* loaded from: classes.dex */
final class l extends g6.n {

    /* renamed from: a  reason: collision with root package name */
    private final m5.j f15023a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(m5.j jVar) {
        this.f15023a = jVar;
    }

    @Override // g6.o
    public final void N(LocationAvailability locationAvailability) {
        this.f15023a.c(new k(this, locationAvailability));
    }

    public final synchronized void f() {
        this.f15023a.a();
    }

    @Override // g6.o
    public final void v(LocationResult locationResult) {
        this.f15023a.c(new j(this, locationResult));
    }
}
