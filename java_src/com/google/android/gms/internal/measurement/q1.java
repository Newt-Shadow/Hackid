package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class q1 extends v1 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f6703a = new AtomicReference();

    /* renamed from: g  reason: collision with root package name */
    private boolean f6704g;

    public static final Object f1(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    public final String d(long j10) {
        return (String) f1(e1(j10), String.class);
    }

    public final Bundle e1(long j10) {
        Bundle bundle;
        AtomicReference atomicReference = this.f6703a;
        synchronized (atomicReference) {
            if (!this.f6704g) {
                try {
                    atomicReference.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f6703a.get();
        }
        return bundle;
    }

    public final Long k(long j10) {
        return (Long) f1(e1(j10), Long.class);
    }

    @Override // com.google.android.gms.internal.measurement.w1
    public final void zzb(Bundle bundle) {
        AtomicReference atomicReference = this.f6703a;
        synchronized (atomicReference) {
            try {
                atomicReference.set(bundle);
                this.f6704g = true;
                this.f6703a.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
