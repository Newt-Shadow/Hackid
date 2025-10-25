package com.yandex.metrica.identifiers;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.yandex.metrica.identifiers.impl.h;
@Keep
/* loaded from: classes.dex */
public class AdsIdentifiersProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f9654a = 0;
    private static final h retriever = new h(null, 1);

    public static Bundle requestIdentifiers(Context context, Bundle bundle) {
        return retriever.a(context, bundle.getString("com.yandex.metrica.identifiers.extra.PROVIDER"));
    }
}
