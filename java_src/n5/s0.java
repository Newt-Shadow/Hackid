package n5;

import android.app.PendingIntent;
import android.os.Bundle;
/* loaded from: classes.dex */
abstract class s0 extends e1 {

    /* renamed from: d  reason: collision with root package name */
    public final int f26392d;

    /* renamed from: e  reason: collision with root package name */
    public final Bundle f26393e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ c f26394f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(c cVar, int i10, Bundle bundle) {
        super(cVar, Boolean.TRUE);
        this.f26394f = cVar;
        this.f26392d = i10;
        this.f26393e = bundle;
    }

    @Override // n5.e1
    protected final /* bridge */ /* synthetic */ void a(Object obj) {
        Boolean bool = (Boolean) obj;
        PendingIntent pendingIntent = null;
        if (this.f26392d != 0) {
            this.f26394f.i0(1, null);
            Bundle bundle = this.f26393e;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("pendingIntent");
            }
            f(new l5.b(this.f26392d, pendingIntent));
        } else if (!g()) {
            this.f26394f.i0(1, null);
            f(new l5.b(8, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.e1
    public final void b() {
    }

    protected abstract void f(l5.b bVar);

    protected abstract boolean g();
}
