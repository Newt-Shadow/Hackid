package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.l  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1305l implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f20001a = new HashSet();

    public C1305l(C1355n c1355n) {
        c1355n.registerListener(this, new ActivityEvent[0]);
    }

    public final synchronized void a(InterfaceC1280k interfaceC1280k) {
        this.f20001a.add(interfaceC1280k);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        C1509t4.j().f20620c.a().execute(new RunnableC1255j(this, activity));
    }

    public final void a(Activity activity) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f20001a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((C1051aj) ((InterfaceC1280k) it.next())).a(activity);
        }
    }
}
