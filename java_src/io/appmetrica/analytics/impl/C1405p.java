package io.appmetrica.analytics.impl;

import android.app.Activity;
import java.util.WeakHashMap;
/* renamed from: io.appmetrica.analytics.impl.p  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1405p {

    /* renamed from: a  reason: collision with root package name */
    public final WeakHashMap f20321a = new WeakHashMap();

    public final boolean a(Activity activity, EnumC1380o enumC1380o) {
        if (activity != null && this.f20321a.get(activity) == enumC1380o) {
            return false;
        }
        if (activity != null) {
            this.f20321a.put(activity, enumC1380o);
            return true;
        }
        return true;
    }
}
