package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(k7.e0 e0Var, k7.d dVar) {
        h7.f fVar = (h7.f) dVar.get(h7.f.class);
        android.support.v4.media.session.b.a(dVar.get(j8.a.class));
        return new FirebaseMessaging(fVar, null, dVar.a(s8.i.class), dVar.a(i8.j.class), (l8.e) dVar.get(l8.e.class), dVar.e(e0Var), (h8.d) dVar.get(h8.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<k7.c> getComponents() {
        final k7.e0 a10 = k7.e0.a(b8.b.class, n2.j.class);
        return Arrays.asList(k7.c.c(FirebaseMessaging.class).h(LIBRARY_NAME).b(k7.q.k(h7.f.class)).b(k7.q.h(j8.a.class)).b(k7.q.i(s8.i.class)).b(k7.q.i(i8.j.class)).b(k7.q.k(l8.e.class)).b(k7.q.j(a10)).b(k7.q.k(h8.d.class)).f(new k7.g() { // from class: com.google.firebase.messaging.e0
            @Override // k7.g
            public final Object a(k7.d dVar) {
                FirebaseMessaging lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseMessagingRegistrar.lambda$getComponents$0(k7.e0.this, dVar);
                return lambda$getComponents$0;
            }
        }).c().d(), s8.h.b(LIBRARY_NAME, "25.0.0"));
    }
}
