package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class U1 implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f19034a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public volatile K7 f19035b = null;

    public final void a(K7 k72) {
        ArrayList a10;
        synchronized (this) {
            this.f19035b = k72;
            a10 = a();
        }
        Iterator it = a10.iterator();
        while (it.hasNext()) {
            ((Zd) it.next()).consume(k72);
        }
    }

    public final void b() {
        C1509t4.j().f20622e.registerListener(this, ActivityEvent.CREATED);
    }

    public final void c() {
        C1509t4.j().f20622e.unregisterListener(this, ActivityEvent.CREATED);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        String dataString;
        Intent intent = (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new S1());
        if (intent == null) {
            dataString = null;
        } else {
            dataString = intent.getDataString();
        }
        if (!TextUtils.isEmpty(dataString)) {
            T1 t12 = new T1(dataString);
            synchronized (this) {
                K7 k72 = this.f19035b;
                if (k72 == null) {
                    this.f19034a.add(t12);
                } else {
                    IHandlerExecutor a10 = C1509t4.j().f20620c.a();
                    ((L9) a10).f18518b.post(new R1(t12, k72));
                }
            }
        }
    }

    public final synchronized ArrayList a() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.f19034a);
        this.f19034a.clear();
        return arrayList;
    }
}
