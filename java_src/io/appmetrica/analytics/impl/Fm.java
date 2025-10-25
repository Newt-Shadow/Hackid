package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public final class Fm extends V2 {
    public Fm(int i10, String str) {
        this(i10, str, PublicLogger.getAnonymousInstance());
    }

    public final int b() {
        return this.f19107a;
    }

    public Fm(int i10, String str, PublicLogger publicLogger) {
        super(i10, str, publicLogger);
    }

    public final String a() {
        return this.f19108b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1478rn
    public final String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            int i10 = this.f19107a;
            if (length > i10) {
                String str2 = new String(bytes, 0, i10, "UTF-8");
                try {
                    this.f19109c.warning("\"%s\" %s exceeded limit of %d bytes", this.f19108b, str, Integer.valueOf(this.f19107a));
                } catch (UnsupportedEncodingException unused) {
                }
                return str2;
            }
            return str;
        } catch (UnsupportedEncodingException unused2) {
            return str;
        }
    }
}
