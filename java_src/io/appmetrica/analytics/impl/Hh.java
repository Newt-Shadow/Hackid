package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class Hh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18308a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f18309b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18310c;

    public Hh(C1225hi c1225hi, String str, List list) {
        this.f18310c = c1225hi;
        this.f18308a = str;
        this.f18309b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18310c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportEvent(this.f18308a, CollectionUtils.getMapFromList(this.f18309b));
    }
}
