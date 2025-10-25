package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.BiConsumer;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class W2 implements BiConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ X2 f19142a;

    public W2(X2 x22) {
        this.f19142a = x22;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.BiConsumer
    public final void consume(Object obj, Object obj2) {
        Context context = (Context) obj;
        Intent intent = (Intent) obj2;
        synchronized (this.f19142a) {
            X2 x22 = this.f19142a;
            x22.f19219b = intent;
            Iterator it = x22.f19218a.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).consume(intent);
            }
        }
    }
}
