package com.yandex.metrica.impl.ob;

import android.app.Activity;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<Activity, a> f13442a = new WeakHashMap<>();

    /* loaded from: classes2.dex */
    public enum a {
        UNDEFINED,
        RESUMED,
        PAUSED
    }

    public boolean a(Activity activity, a aVar) {
        if (activity != null && this.f13442a.get(activity) == aVar) {
            return false;
        }
        if (activity != null) {
            this.f13442a.put(activity, aVar);
            return true;
        }
        return true;
    }
}
