package i6;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.p5;
import com.google.android.gms.measurement.internal.w6;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final n f17299a;

    public o(n nVar) {
        n5.q.k(nVar);
        this.f17299a = nVar;
    }

    public final void a(Context context, Intent intent) {
        w6 O = w6.O(context, null, null);
        p5 a10 = O.a();
        if (intent == null) {
            a10.r().a("Receiver called with null intent");
            return;
        }
        O.c();
        String action = intent.getAction();
        a10.w().b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            a10.w().a("Starting wakeful intent.");
            this.f17299a.a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            a10.r().a("Install Referrer Broadcasts are deprecated");
        }
    }
}
