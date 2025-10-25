package io.appmetrica.analytics.location.impl;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class n implements LocationListener {

    /* renamed from: a  reason: collision with root package name */
    public final p f21129a;

    public n(p pVar) {
        this.f21129a = pVar;
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        boolean z10;
        if (location != null) {
            p pVar = this.f21129a;
            pVar.getClass();
            String provider = location.getProvider();
            t tVar = (t) pVar.f21135e.get(provider);
            if (tVar == null) {
                t tVar2 = new t(pVar.f21131a.f21108a);
                tVar2.f21142c.add(pVar.f21133c);
                for (Consumer consumer : pVar.f21134d) {
                    tVar2.f21142c.add(consumer);
                }
                pVar.f21135e.put(provider, tVar2);
                tVar = tVar2;
            } else {
                tVar.f21140a = pVar.f21131a.f21108a;
            }
            if (tVar.f21143d != null) {
                boolean didTimePassMillis = tVar.f21141b.didTimePassMillis(tVar.f21144e, tVar.f21140a.getUpdateTimeInterval(), "isSavedLocationOutdated");
                boolean z11 = true;
                if (location.distanceTo(tVar.f21143d) > tVar.f21140a.getUpdateDistanceInterval()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (tVar.f21143d != null && location.getTime() - tVar.f21143d.getTime() < 0) {
                    z11 = false;
                }
                if ((!didTimePassMillis && !z10) || !z11) {
                    return;
                }
            }
            tVar.f21143d = location;
            tVar.f21144e = System.currentTimeMillis();
            Iterator it = tVar.f21142c.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).consume(location);
            }
        }
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
