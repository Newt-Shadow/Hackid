package io.appmetrica.analytics.identifiers.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import io.appmetrica.analytics.identifiers.impl.a;
import io.appmetrica.analytics.identifiers.impl.b;
import io.appmetrica.analytics.identifiers.impl.c;
import io.appmetrica.analytics.identifiers.impl.d;
@Keep
/* loaded from: classes2.dex */
public class AdvIdentifiersProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f17915a = 0;
    private static final d retriever = new d();

    public static Bundle requestIdentifiers(Context context, Bundle bundle) {
        c a10;
        b bVar = (b) retriever.f17898a.get(bundle.getString("io.appmetrica.analytics.identifiers.extra.PROVIDER"));
        if (bVar != null && (a10 = bVar.a(context)) != null) {
            Bundle bundle2 = new Bundle();
            a aVar = a10.f17896b;
            if (aVar != null) {
                Bundle bundle3 = new Bundle();
                bundle3.putString("io.appmetrica.analytics.identifiers.extra.PROVIDER", aVar.f17892a);
                bundle3.putString("io.appmetrica.analytics.identifiers.extra.ID", aVar.f17893b);
                Boolean bool = aVar.f17894c;
                if (bool != null) {
                    bundle3.putBoolean("io.appmetrica.analytics.identifiers.extra.LIMITED", bool.booleanValue());
                }
                bundle2.putBundle("io.appmetrica.analytics.identifiers.extra.TRACKING_INFO", bundle3);
            }
            bundle2.putString("io.appmetrica.analytics.identifiers.extra.STATUS", a10.f17895a.getValue());
            bundle2.putString("io.appmetrica.analytics.identifiers.extra.ERROR_MESSAGE", a10.f17897c);
            return bundle2;
        }
        return null;
    }
}
