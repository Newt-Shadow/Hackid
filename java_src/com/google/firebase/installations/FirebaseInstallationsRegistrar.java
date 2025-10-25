package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import k7.e0;
import k7.q;
import l7.j;
@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l8.e lambda$getComponents$0(k7.d dVar) {
        return new c((h7.f) dVar.get(h7.f.class), dVar.a(i8.i.class), (ExecutorService) dVar.b(e0.a(j7.a.class, ExecutorService.class)), j.a((Executor) dVar.b(e0.a(j7.b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k7.c> getComponents() {
        return Arrays.asList(k7.c.c(l8.e.class).h(LIBRARY_NAME).b(q.k(h7.f.class)).b(q.i(i8.i.class)).b(q.l(e0.a(j7.a.class, ExecutorService.class))).b(q.l(e0.a(j7.b.class, Executor.class))).f(new k7.g() { // from class: l8.f
            @Override // k7.g
            public final Object a(k7.d dVar) {
                e lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(dVar);
                return lambda$getComponents$0;
            }
        }).d(), i8.h.a(), s8.h.b(LIBRARY_NAME, "19.0.0"));
    }
}
