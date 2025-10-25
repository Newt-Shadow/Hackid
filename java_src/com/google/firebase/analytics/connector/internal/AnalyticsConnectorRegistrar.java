package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import k7.q;
import s8.h;
@Keep
/* loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i7.a lambda$getComponents$0(k7.d dVar) {
        return i7.b.d((h7.f) dVar.get(h7.f.class), (Context) dVar.get(Context.class), (h8.d) dVar.get(h8.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<k7.c> getComponents() {
        return Arrays.asList(k7.c.c(i7.a.class).b(q.k(h7.f.class)).b(q.k(Context.class)).b(q.k(h8.d.class)).f(a.f8692a).e().d(), h.b("fire-analytics", "23.0.0"));
    }
}
