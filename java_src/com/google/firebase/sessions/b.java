package com.google.firebase.sessions;

import ad.i;
import android.content.Context;
import android.util.Log;
import com.google.firebase.sessions.b;
import id.l;
import j0.e0;
import j0.j;
import j0.y;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.m;
import td.l0;
import td.m0;
import u8.f0;
import u8.j0;
import u8.s0;
import u8.w0;
import u8.x0;
import u8.y0;
import u8.z0;
import x8.h;
import yc.o;
/* loaded from: classes.dex */
public interface b {

    /* loaded from: classes.dex */
    public interface a {
        a a(l8.e eVar);

        a b(k8.b bVar);

        b build();

        a c(i iVar);

        a d(i iVar);

        a e(Context context);

        a f(h7.f fVar);
    }

    /* renamed from: com.google.firebase.sessions.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0109b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f9056a = a.f9057a;

        /* renamed from: com.google.firebase.sessions.b$b$a */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ a f9057a = new a();

            private a() {
            }

            private final j0.i f(e0 e0Var, k0.b bVar, List list, l0 l0Var, id.a aVar) {
                if (h()) {
                    return y.f24281a.a(e0Var, bVar, list, l0Var, aVar);
                }
                return j.f24037a.a(e0Var, bVar, list, l0Var, aVar);
            }

            static /* synthetic */ j0.i g(a aVar, e0 e0Var, k0.b bVar, List list, l0 l0Var, id.a aVar2, int i10, Object obj) {
                if ((i10 & 4) != 0) {
                    list = o.h();
                }
                return aVar.f(e0Var, bVar, list, l0Var, aVar2);
            }

            private final boolean h() {
                try {
                    System.loadLibrary("datastore_shared_counter");
                    return true;
                } catch (SecurityException | UnsatisfiedLinkError unused) {
                    return false;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final h j(j0.d ex) {
                m.e(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session configs DataStore", ex);
                return x8.i.f32577a.a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File k(Context context) {
                return i0.a.a(context, "aqs/sessionConfigsDataStore.data");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final u8.e0 m(f0 f0Var, j0.d ex) {
                m.e(ex, "ex");
                Log.w("FirebaseSessions", "CorruptionException in session data DataStore", ex);
                return f0Var.a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File n(Context context) {
                return i0.a.a(context, "aqs/sessionDataStore.data");
            }

            public final u8.b e(h7.f firebaseApp) {
                m.e(firebaseApp, "firebaseApp");
                return j0.f30924a.b(firebaseApp);
            }

            public final j0.i i(final Context appContext, i blockingDispatcher) {
                m.e(appContext, "appContext");
                m.e(blockingDispatcher, "blockingDispatcher");
                return g(this, x8.i.f32577a, new k0.b(new l() { // from class: u8.o
                    @Override // id.l
                    public final Object invoke(Object obj) {
                        x8.h j10;
                        j10 = b.InterfaceC0109b.a.j((j0.d) obj);
                        return j10;
                    }
                }), null, m0.a(blockingDispatcher), new id.a() { // from class: u8.p
                    @Override // id.a
                    public final Object invoke() {
                        File k10;
                        k10 = b.InterfaceC0109b.a.k(appContext);
                        return k10;
                    }
                }, 4, null);
            }

            public final j0.i l(final Context appContext, i blockingDispatcher, final f0 sessionDataSerializer) {
                m.e(appContext, "appContext");
                m.e(blockingDispatcher, "blockingDispatcher");
                m.e(sessionDataSerializer, "sessionDataSerializer");
                return g(this, sessionDataSerializer, new k0.b(new l() { // from class: u8.m
                    @Override // id.l
                    public final Object invoke(Object obj) {
                        e0 m10;
                        m10 = b.InterfaceC0109b.a.m(f0.this, (j0.d) obj);
                        return m10;
                    }
                }), null, m0.a(blockingDispatcher), new id.a() { // from class: u8.n
                    @Override // id.a
                    public final Object invoke() {
                        File n10;
                        n10 = b.InterfaceC0109b.a.n(appContext);
                        return n10;
                    }
                }, 4, null);
            }

            public final w0 o() {
                return x0.f31049a;
            }

            public final y0 p() {
                return z0.f31052a;
            }
        }
    }

    u8.l a();

    s0 b();
}
