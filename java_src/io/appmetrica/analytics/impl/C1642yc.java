package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* renamed from: io.appmetrica.analytics.impl.yc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1642yc extends AbstractC1156f {
    public C1642yc(Context context, C1671zg c1671zg) {
        super(context, c1671zg);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1156f
    public final void b(C1138e6 c1138e6, G4 g42) {
        boolean booleanValue = ((Boolean) WrapUtils.getOrDefault(g42.f18260b.f18200b, Boolean.FALSE)).booleanValue();
        Vb l10 = C1665za.E.l();
        l10.a(booleanValue);
        l10.a(g42.f18260b.f18201c);
        Boolean bool = g42.f18260b.f18212n;
        if (bool != null) {
            C1665za.E.b().b(bool.booleanValue());
        }
        this.f19613b.a(c1138e6, g42);
    }
}
