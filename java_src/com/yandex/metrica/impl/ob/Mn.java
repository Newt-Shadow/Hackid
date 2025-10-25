package com.yandex.metrica.impl.ob;

import java.util.Map;
/* loaded from: classes2.dex */
public class Mn implements Kn<String> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, ?> f10863a;

    public Mn(Map<String, ?> map) {
        this.f10863a = map;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(String str) {
        String str2 = str;
        if (this.f10863a.containsKey(str2)) {
            return In.a(this, String.format("Failed to activate AppMetrica with provided apiKey ApiKey %s has already been used by another reporter.", str2));
        }
        return In.a(this);
    }
}
