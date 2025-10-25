package com.google.firebase.sessions;

import ad.i;
import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import com.google.firebase.sessions.b;
import j0.y;
import java.util.List;
import k7.e0;
import k7.q;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import n2.j;
import s8.h;
import td.i0;
import u8.l;
import yc.o;
@Keep
/* loaded from: classes.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    private static final a Companion = new a(null);
    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final e0 appContext;
    private static final e0 backgroundDispatcher;
    private static final e0 blockingDispatcher;
    private static final e0 firebaseApp;
    private static final e0 firebaseInstallationsApi;
    private static final e0 firebaseSessionsComponent;
    private static final e0 transportFactory;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        e0 b10 = e0.b(Context.class);
        m.d(b10, "unqualified(...)");
        appContext = b10;
        e0 b11 = e0.b(h7.f.class);
        m.d(b11, "unqualified(...)");
        firebaseApp = b11;
        e0 b12 = e0.b(l8.e.class);
        m.d(b12, "unqualified(...)");
        firebaseInstallationsApi = b12;
        e0 a10 = e0.a(j7.a.class, i0.class);
        m.d(a10, "qualified(...)");
        backgroundDispatcher = a10;
        e0 a11 = e0.a(j7.b.class, i0.class);
        m.d(a11, "qualified(...)");
        blockingDispatcher = a11;
        e0 b13 = e0.b(j.class);
        m.d(b13, "unqualified(...)");
        transportFactory = b13;
        e0 b14 = e0.b(b.class);
        m.d(b14, "unqualified(...)");
        firebaseSessionsComponent = b14;
        try {
            y.f24281a.getClass();
        } catch (NoClassDefFoundError unused) {
            Log.w("FirebaseSessions", "Your app is experiencing a known issue in the Android Gradle plugin, see https://issuetracker.google.com/328687152\n\nIt affects Java-only apps using AGP version 8.3.2 and under. To avoid the issue, either:\n\n1. Upgrade Android Gradle plugin to 8.4.0+\n   Follow the guide at https://developer.android.com/build/agp-upgrade-assistant\n\n2. Or, add the Kotlin plugin to your app\n   Follow the guide at https://developer.android.com/kotlin/add-kotlin\n\n3. Or, do the technical workaround described in https://issuetracker.google.com/issues/328687152#comment3");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l getComponents$lambda$0(k7.d dVar) {
        return ((b) dVar.b(firebaseSessionsComponent)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b getComponents$lambda$1(k7.d dVar) {
        b.a a10 = com.google.firebase.sessions.a.a();
        Object b10 = dVar.b(appContext);
        m.d(b10, "get(...)");
        b.a e10 = a10.e((Context) b10);
        Object b11 = dVar.b(backgroundDispatcher);
        m.d(b11, "get(...)");
        b.a c10 = e10.c((i) b11);
        Object b12 = dVar.b(blockingDispatcher);
        m.d(b12, "get(...)");
        b.a d10 = c10.d((i) b12);
        Object b13 = dVar.b(firebaseApp);
        m.d(b13, "get(...)");
        b.a f10 = d10.f((h7.f) b13);
        Object b14 = dVar.b(firebaseInstallationsApi);
        m.d(b14, "get(...)");
        b.a a11 = f10.a((l8.e) b14);
        k8.b e11 = dVar.e(transportFactory);
        m.d(e11, "getProvider(...)");
        return a11.b(e11).build();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k7.c> getComponents() {
        List<k7.c> k10;
        k10 = o.k(k7.c.c(l.class).h(LIBRARY_NAME).b(q.l(firebaseSessionsComponent)).f(new k7.g() { // from class: u8.q
            @Override // k7.g
            public final Object a(k7.d dVar) {
                l components$lambda$0;
                components$lambda$0 = FirebaseSessionsRegistrar.getComponents$lambda$0(dVar);
                return components$lambda$0;
            }
        }).e().d(), k7.c.c(b.class).h("fire-sessions-component").b(q.l(appContext)).b(q.l(backgroundDispatcher)).b(q.l(blockingDispatcher)).b(q.l(firebaseApp)).b(q.l(firebaseInstallationsApi)).b(q.n(transportFactory)).f(new k7.g() { // from class: u8.r
            @Override // k7.g
            public final Object a(k7.d dVar) {
                com.google.firebase.sessions.b components$lambda$1;
                components$lambda$1 = FirebaseSessionsRegistrar.getComponents$lambda$1(dVar);
                return components$lambda$1;
            }
        }).d(), h.b(LIBRARY_NAME, "3.0.0"));
        return k10;
    }
}
