package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Bb implements Yn {
    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(String str) {
        if (str == null) {
            return new Wn(this, false, "key is null");
        }
        if (str.startsWith("appmetrica")) {
            return new Wn(this, false, "key starts with appmetrica");
        }
        if (str.length() > 200) {
            return new Wn(this, false, "key length more then 200 characters");
        }
        return new Wn(this, true, "");
    }
}
