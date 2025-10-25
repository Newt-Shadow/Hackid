package io.appmetrica.analytics.impl;

import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.mi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1349mi implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final Map f20134a;

    public C1349mi(Map<String, ?> map) {
        this.f20134a = map;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(String str) {
        if (this.f20134a.containsKey(str)) {
            return new Wn(this, false, String.format("Failed to activate AppMetrica with provided apiKey ApiKey %s has already been used by another reporter.", str));
        }
        return new Wn(this, true, "");
    }
}
