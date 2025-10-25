package com.google.firebase.analytics.connector.internal;

import i7.a;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final Set f8701a;

    /* renamed from: b  reason: collision with root package name */
    private final a.b f8702b;

    /* renamed from: c  reason: collision with root package name */
    private final h6.a f8703c;

    /* renamed from: d  reason: collision with root package name */
    private final c f8704d;

    public d(h6.a aVar, a.b bVar) {
        this.f8702b = bVar;
        this.f8703c = aVar;
        c cVar = new c(this);
        this.f8704d = cVar;
        aVar.b(cVar);
        this.f8701a = new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ a.b a() {
        return this.f8702b;
    }
}
