package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0839s;
import java.util.Collections;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.c9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0454c9 extends AbstractC0479d9 implements InterfaceC0528f8 {

    /* renamed from: c  reason: collision with root package name */
    private static final Rd f12137c = new Rd("IDENTITY_SEND_TIME", null);

    /* renamed from: d  reason: collision with root package name */
    private static final Rd f12138d = new Rd("PERMISSIONS_CHECK_TIME", null);

    /* renamed from: e  reason: collision with root package name */
    private static final Rd f12139e = new Rd("USER_INFO", null);

    /* renamed from: f  reason: collision with root package name */
    private static final Rd f12140f = new Rd("PROFILE_ID", null);

    /* renamed from: g  reason: collision with root package name */
    private static final Rd f12141g = new Rd("APP_ENVIRONMENT", null);

    /* renamed from: h  reason: collision with root package name */
    private static final Rd f12142h = new Rd("APP_ENVIRONMENT_REVISION", null);

    /* renamed from: i  reason: collision with root package name */
    private static final Rd f12143i = new Rd("LAST_MIGRATION_VERSION", null);

    /* renamed from: j  reason: collision with root package name */
    private static final Rd f12144j = new Rd("LAST_APP_VERSION_WITH_FEATURES", null);

    /* renamed from: k  reason: collision with root package name */
    private static final Rd f12145k = new Rd("APPLICATION_FEATURES", null);

    /* renamed from: l  reason: collision with root package name */
    private static final Rd f12146l = new Rd("LAST_STAT_SENDING_DISABLED_REPORTING_TIMESTAMP", null);

    /* renamed from: m  reason: collision with root package name */
    private static final Rd f12147m = new Rd("CERTIFICATES_SHA1_FINGERPRINTS", null);

    /* renamed from: n  reason: collision with root package name */
    static final Rd f12148n = new Rd("DEPRECATED_NATIVE_CRASHES_CHECKED", null);

    /* renamed from: o  reason: collision with root package name */
    private static final Rd f12149o = new Rd("REFERRER_HANDLED", null);

    /* renamed from: p  reason: collision with root package name */
    private static final Rd f12150p = new Rd("VITAL_DATA", null);

    public C0454c9(S7 s72) {
        super(s72);
    }

    public C0454c9 a(C0839s.a aVar) {
        synchronized (this) {
            b(f12141g.a(), aVar.f13570a);
            b(f12142h.a(), aVar.f13571b);
        }
        return this;
    }

    public long b(long j10) {
        return a(f12137c.a(), j10);
    }

    public C0454c9 c(long j10) {
        return (C0454c9) b(f12137c.a(), j10);
    }

    public C0454c9 d(long j10) {
        return (C0454c9) b(f12146l.a(), j10);
    }

    public C0454c9 e(long j10) {
        return (C0454c9) b(f12138d.a(), j10);
    }

    public C0839s.a f() {
        C0839s.a aVar;
        synchronized (this) {
            aVar = new C0839s.a(a(f12141g.a(), "{}"), a(f12142h.a(), 0L));
        }
        return aVar;
    }

    public String g() {
        return a(f12145k.a(), "");
    }

    public C0454c9 h(String str) {
        return (C0454c9) b(f12145k.a(), str);
    }

    public int i() {
        return a(f12144j.a(), -1);
    }

    public C0454c9 j(String str) {
        return (C0454c9) b(f12139e.a(), str);
    }

    public long k() {
        return a(f12146l.a(), 0L);
    }

    public long l() {
        return a(f12138d.a(), 0L);
    }

    public String m() {
        return e(f12140f.a());
    }

    public String n() {
        return a(f12139e.a(), (String) null);
    }

    public boolean o() {
        return a(f12148n.a(), false);
    }

    public C0454c9 p() {
        return (C0454c9) b(f12148n.a(), true);
    }

    @Deprecated
    public C0454c9 q() {
        return (C0454c9) b(f12149o.a(), true);
    }

    @Deprecated
    public C0454c9 r() {
        return (C0454c9) f(f12143i.a());
    }

    @Deprecated
    public C0454c9 s() {
        return (C0454c9) f(f12149o.a());
    }

    @Deprecated
    public Boolean t() {
        Rd rd2 = f12149o;
        if (!c(rd2.a())) {
            return null;
        }
        return Boolean.valueOf(a(rd2.a(), false));
    }

    public C0454c9 c(String str, String str2) {
        return (C0454c9) b(new Rd(io.appmetrica.analytics.impl.Ue.f19059q, str).a(), str2);
    }

    public String g(String str) {
        return a(new Rd(io.appmetrica.analytics.impl.Ue.f19059q, str).a(), "");
    }

    public List<String> h() {
        return a(f12147m.a(), Collections.emptyList());
    }

    public C0454c9 i(String str) {
        return (C0454c9) b(f12140f.a(), str);
    }

    @Deprecated
    public Integer j() {
        Rd rd2 = f12143i;
        if (c(rd2.a())) {
            return Integer.valueOf((int) a(rd2.a(), 0L));
        }
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public String c() {
        return a(f12150p.a(), (String) null);
    }

    public C0454c9 a(int i10) {
        return (C0454c9) b(f12144j.a(), i10);
    }

    public C0454c9 a(List<String> list) {
        return (C0454c9) b(f12147m.a(), list);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public void a(String str) {
        b(f12150p.a(), str);
    }
}
