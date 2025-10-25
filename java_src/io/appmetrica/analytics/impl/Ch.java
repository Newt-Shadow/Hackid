package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ICrashTransformer;
/* loaded from: classes2.dex */
public final class Ch extends AbstractC1611x6 {

    /* renamed from: d  reason: collision with root package name */
    public final Cn f18056d;

    public Ch(Context context, Cn cn, InterfaceC1586w6 interfaceC1586w6, ICrashTransformer iCrashTransformer) {
        this(cn, interfaceC1586w6, iCrashTransformer, new Y9(context));
    }

    public final Cn c() {
        return this.f18056d;
    }

    public Ch(Cn cn, InterfaceC1586w6 interfaceC1586w6, ICrashTransformer iCrashTransformer, Y9 y92) {
        super(interfaceC1586w6, iCrashTransformer, y92);
        this.f18056d = cn;
    }
}
