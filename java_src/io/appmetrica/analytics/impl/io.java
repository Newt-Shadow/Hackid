package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class io extends SimpleThreadSafeToggle {

    /* renamed from: a  reason: collision with root package name */
    public final WeakHashMap f19814a;

    public io() {
        super(false, "[WakelocksToggle]");
        this.f19814a = new WeakHashMap();
    }

    public final synchronized void a(Object obj) {
        this.f19814a.put(obj, null);
        if (this.f19814a.size() == 1) {
            updateState(true);
        }
    }

    public final synchronized void b(Object obj) {
        this.f19814a.remove(obj);
        if (this.f19814a.isEmpty()) {
            updateState(false);
        }
    }
}
