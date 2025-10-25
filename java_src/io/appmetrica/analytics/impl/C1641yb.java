package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import java.io.File;
/* renamed from: io.appmetrica.analytics.impl.yb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1641yb implements Function, Consumer {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.Function
    /* renamed from: a */
    public final C1566vb apply(File file) {
        String a10 = Va.a(file);
        if (!TextUtils.isEmpty(a10)) {
            try {
                return new C1566vb(a10);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    /* renamed from: b */
    public final void consume(File file) {
        try {
            file.delete();
        } catch (Throwable unused) {
        }
    }
}
