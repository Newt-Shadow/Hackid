package io.appmetrica.analytics.coreutils.internal.toggle;

import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.d0;
import xc.l;
import xc.m;
import xc.t;
/* loaded from: classes2.dex */
public final class ConjunctiveCompositeThreadSafeToggle implements Toggle {

    /* renamed from: c  reason: collision with root package name */
    private final String f17777c;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f17779e;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f17775a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap f17776b = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final ReentrantLock f17778d = new ReentrantLock();

    public ConjunctiveCompositeThreadSafeToggle(List<? extends Toggle> list, String str) {
        this.f17777c = "[ConjunctiveCompositeToggle-" + str + ']';
        try {
            access$acquireLock(this);
            for (final Toggle toggle : list) {
                ToggleObserver toggleObserver = new ToggleObserver() { // from class: io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle$1$1$observer$1
                    @Override // io.appmetrica.analytics.coreapi.internal.control.ToggleObserver
                    public void onStateChanged(boolean z10) {
                        ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle = ConjunctiveCompositeThreadSafeToggle.this;
                        Toggle toggle2 = toggle;
                        try {
                            ConjunctiveCompositeThreadSafeToggle.access$acquireLock(conjunctiveCompositeThreadSafeToggle);
                            ConjunctiveCompositeThreadSafeToggle.access$updateState(conjunctiveCompositeThreadSafeToggle, this, z10, String.valueOf(d0.b(toggle2.getClass()).b()));
                        } finally {
                            ConjunctiveCompositeThreadSafeToggle.access$releaseLock(conjunctiveCompositeThreadSafeToggle);
                        }
                    }
                };
                this.f17776b.put(toggleObserver, Boolean.valueOf(toggle.getActualState()));
                toggle.registerObserver(toggleObserver, false);
            }
            setActualState(a(this.f17776b.values()));
        } finally {
            access$releaseLock(this);
        }
    }

    private static boolean a(Collection collection) {
        if (!(collection instanceof Collection) || !collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!((Boolean) it.next()).booleanValue()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final void access$acquireLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.getClass();
        boolean z10 = false;
        while (!z10) {
            try {
                l.a aVar = l.f32718b;
                z10 = conjunctiveCompositeThreadSafeToggle.f17778d.tryLock(100L, TimeUnit.MILLISECONDS);
                l.b(t.f32733a);
            } catch (Throwable th) {
                l.a aVar2 = l.f32718b;
                l.b(m.a(th));
            }
            if (!z10) {
                try {
                    Thread.sleep(100L);
                    l.b(t.f32733a);
                } catch (Throwable th2) {
                    l.a aVar3 = l.f32718b;
                    l.b(m.a(th2));
                }
            }
        }
    }

    public static final void access$releaseLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.f17778d.unlock();
    }

    public static final void access$updateState(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle, ToggleObserver toggleObserver, boolean z10, String str) {
        conjunctiveCompositeThreadSafeToggle.f17776b.put(toggleObserver, Boolean.valueOf(z10));
        boolean a10 = a(conjunctiveCompositeThreadSafeToggle.f17776b.values());
        if (a10 != conjunctiveCompositeThreadSafeToggle.getActualState()) {
            conjunctiveCompositeThreadSafeToggle.setActualState(a10);
            Iterator it = conjunctiveCompositeThreadSafeToggle.f17775a.iterator();
            while (it.hasNext()) {
                ((ToggleObserver) it.next()).onStateChanged(a10);
            }
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public boolean getActualState() {
        return this.f17779e;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public void registerObserver(ToggleObserver toggleObserver, boolean z10) {
        try {
            access$acquireLock(this);
            this.f17775a.add(toggleObserver);
            if (z10) {
                toggleObserver.onStateChanged(getActualState());
            }
        } finally {
            access$releaseLock(this);
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.Toggle
    public void removeObserver(ToggleObserver toggleObserver) {
        try {
            access$acquireLock(this);
            this.f17775a.remove(toggleObserver);
        } finally {
            access$releaseLock(this);
        }
    }

    public void setActualState(boolean z10) {
        this.f17779e = z10;
    }

    public String toString() {
        return "ConjunctiveCompositeThreadSafeToggle(toggleStates=" + this.f17776b + ", tag='" + this.f17777c + "', actualState=" + getActualState() + ')';
    }
}
