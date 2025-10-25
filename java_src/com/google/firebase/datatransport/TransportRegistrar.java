package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import b8.b;
import com.google.android.datatransport.cct.a;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Arrays;
import java.util.List;
import k7.c;
import k7.d;
import k7.e0;
import k7.g;
import k7.q;
import n2.j;
import p2.u;
import s8.h;
@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j lambda$getComponents$0(d dVar) {
        u.f((Context) dVar.get(Context.class));
        return u.c().g(a.f5558h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j lambda$getComponents$1(d dVar) {
        u.f((Context) dVar.get(Context.class));
        return u.c().g(a.f5558h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j lambda$getComponents$2(d dVar) {
        u.f((Context) dVar.get(Context.class));
        return u.c().g(a.f5557g);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c> getComponents() {
        return Arrays.asList(c.c(j.class).h(LIBRARY_NAME).b(q.k(Context.class)).f(new g() { // from class: b8.c
            @Override // k7.g
            public final Object a(k7.d dVar) {
                j lambda$getComponents$0;
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(dVar);
                return lambda$getComponents$0;
            }
        }).d(), c.e(e0.a(b8.a.class, j.class)).b(q.k(Context.class)).f(new g() { // from class: b8.d
            @Override // k7.g
            public final Object a(k7.d dVar) {
                j lambda$getComponents$1;
                lambda$getComponents$1 = TransportRegistrar.lambda$getComponents$1(dVar);
                return lambda$getComponents$1;
            }
        }).d(), c.e(e0.a(b.class, j.class)).b(q.k(Context.class)).f(new g() { // from class: b8.e
            @Override // k7.g
            public final Object a(k7.d dVar) {
                j lambda$getComponents$2;
                lambda$getComponents$2 = TransportRegistrar.lambda$getComponents$2(dVar);
                return lambda$getComponents$2;
            }
        }).d(), h.b(LIBRARY_NAME, "19.0.0"));
    }
}
