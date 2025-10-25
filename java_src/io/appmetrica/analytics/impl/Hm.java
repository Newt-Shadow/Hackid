package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class Hm extends V2 {
    public Hm(int i10, String str) {
        this(i10, str, PublicLogger.getAnonymousInstance());
    }

    public final int b() {
        return this.f19107a;
    }

    public Hm(int i10, String str, PublicLogger publicLogger) {
        super(i10, str, publicLogger);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1478rn
    public final String a(String str) {
        if (str != null) {
            int length = str.length();
            int i10 = this.f19107a;
            if (length > i10) {
                String substring = str.substring(0, i10);
                this.f19109c.warning("\"%s\" %s size exceeded limit of %d characters", this.f19108b, str, Integer.valueOf(this.f19107a));
                return substring;
            }
        }
        return str;
    }

    public final String a() {
        return this.f19108b;
    }
}
