package d6;

import com.google.android.gms.location.LocationAvailability;
import g6.LocationCallback;
import m5.j;
/* loaded from: classes.dex */
final class k implements j.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LocationAvailability f15022a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(l lVar, LocationAvailability locationAvailability) {
        this.f15022a = locationAvailability;
    }

    @Override // m5.j.b
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((LocationCallback) obj).onLocationAvailability(this.f15022a);
    }

    @Override // m5.j.b
    public final void b() {
    }
}
