package com.google.firebase.messaging;

import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes.dex */
public final class a implements e8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e8.a f8824a = new a();

    /* renamed from: com.google.firebase.messaging.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0107a implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final C0107a f8825a = new C0107a();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f8826b = d8.c.a("projectNumber").b(g8.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d8.c f8827c = d8.c.a("messageId").b(g8.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final d8.c f8828d = d8.c.a("instanceId").b(g8.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final d8.c f8829e = d8.c.a("messageType").b(g8.a.b().c(4).a()).a();

        /* renamed from: f  reason: collision with root package name */
        private static final d8.c f8830f = d8.c.a("sdkPlatform").b(g8.a.b().c(5).a()).a();

        /* renamed from: g  reason: collision with root package name */
        private static final d8.c f8831g = d8.c.a("packageName").b(g8.a.b().c(6).a()).a();

        /* renamed from: h  reason: collision with root package name */
        private static final d8.c f8832h = d8.c.a("collapseKey").b(g8.a.b().c(7).a()).a();

        /* renamed from: i  reason: collision with root package name */
        private static final d8.c f8833i = d8.c.a(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR).b(g8.a.b().c(8).a()).a();

        /* renamed from: j  reason: collision with root package name */
        private static final d8.c f8834j = d8.c.a("ttl").b(g8.a.b().c(9).a()).a();

        /* renamed from: k  reason: collision with root package name */
        private static final d8.c f8835k = d8.c.a("topic").b(g8.a.b().c(10).a()).a();

        /* renamed from: l  reason: collision with root package name */
        private static final d8.c f8836l = d8.c.a("bulkId").b(g8.a.b().c(11).a()).a();

        /* renamed from: m  reason: collision with root package name */
        private static final d8.c f8837m = d8.c.a("event").b(g8.a.b().c(12).a()).a();

        /* renamed from: n  reason: collision with root package name */
        private static final d8.c f8838n = d8.c.a("analyticsLabel").b(g8.a.b().c(13).a()).a();

        /* renamed from: o  reason: collision with root package name */
        private static final d8.c f8839o = d8.c.a("campaignId").b(g8.a.b().c(14).a()).a();

        /* renamed from: p  reason: collision with root package name */
        private static final d8.c f8840p = d8.c.a("composerLabel").b(g8.a.b().c(15).a()).a();

        private C0107a() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(q8.a aVar, d8.e eVar) {
            eVar.b(f8826b, aVar.l());
            eVar.c(f8827c, aVar.h());
            eVar.c(f8828d, aVar.g());
            eVar.c(f8829e, aVar.i());
            eVar.c(f8830f, aVar.m());
            eVar.c(f8831g, aVar.j());
            eVar.c(f8832h, aVar.d());
            eVar.f(f8833i, aVar.k());
            eVar.f(f8834j, aVar.o());
            eVar.c(f8835k, aVar.n());
            eVar.b(f8836l, aVar.b());
            eVar.c(f8837m, aVar.f());
            eVar.c(f8838n, aVar.a());
            eVar.b(f8839o, aVar.c());
            eVar.c(f8840p, aVar.e());
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final b f8841a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f8842b = d8.c.a("messagingClientEvent").b(g8.a.b().c(1).a()).a();

        private b() {
        }

        @Override // d8.d
        /* renamed from: b */
        public void a(q8.b bVar, d8.e eVar) {
            eVar.c(f8842b, bVar.a());
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements d8.d {

        /* renamed from: a  reason: collision with root package name */
        static final c f8843a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d8.c f8844b = d8.c.d("messagingClientEventExtension");

        private c() {
        }

        @Override // d8.d
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            android.support.v4.media.session.b.a(obj);
            b(null, (d8.e) obj2);
        }

        public void b(n0 n0Var, d8.e eVar) {
            throw null;
        }
    }

    private a() {
    }

    @Override // e8.a
    public void a(e8.b bVar) {
        bVar.a(n0.class, c.f8843a);
        bVar.a(q8.b.class, b.f8841a);
        bVar.a(q8.a.class, C0107a.f8825a);
    }
}
