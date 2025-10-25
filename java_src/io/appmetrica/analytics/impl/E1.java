package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;
/* loaded from: classes2.dex */
public final class E1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ G1 f18127a;

    public E1(G1 g12) {
        this.f18127a = g12;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    public final void consume(Object obj) {
        this.f18127a.a((File) obj);
    }
}
