package d6;

import com.google.android.gms.location.LocationResult;
import g6.LocationCallback;
import m5.j;
/* loaded from: classes.dex */
final class j implements j.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LocationResult f15021a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(l lVar, LocationResult locationResult) {
        this.f15021a = locationResult;
    }

    @Override // m5.j.b
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.f15021a);
    }

    @Override // m5.j.b
    public final void b() {
    }
}
