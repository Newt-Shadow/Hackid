package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.ae  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1046ae implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final String f19380a;

    public C1046ae(String str) {
        this.f19380a = str;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Object obj) {
        if (obj == null) {
            return new Wn(this, false, this.f19380a + " is null.");
        }
        return new Wn(this, true, "");
    }

    public final String a() {
        return this.f19380a;
    }
}
