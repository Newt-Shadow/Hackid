package com.yandex.metrica.impl.ob;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.a9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0404a9 extends AbstractC0479d9 {

    /* renamed from: c  reason: collision with root package name */
    private final Rd f11963c;

    /* renamed from: d  reason: collision with root package name */
    private final Rd f11964d;

    public C0404a9(S7 s72) {
        super(s72);
        this.f11963c = new Rd("init_event_pref_key");
        this.f11964d = new Rd("first_event_pref_key");
    }

    @Deprecated
    public boolean f() {
        if (a(this.f11964d.a(), (String) null) != null) {
            return true;
        }
        return false;
    }

    @Deprecated
    public String g(String str) {
        return a(this.f11963c.a(), (String) null);
    }

    @Deprecated
    public C0404a9 h() {
        return (C0404a9) f(this.f11964d.a());
    }

    @Deprecated
    public C0404a9 i() {
        return (C0404a9) f(this.f11963c.a());
    }

    @Deprecated
    public void j() {
        b(this.f11964d.a(), "DONE").d();
    }

    @Deprecated
    public void k() {
        b(this.f11963c.a(), "DONE").d();
    }

    @Deprecated
    public boolean g() {
        return a(this.f11963c.a(), (String) null) != null;
    }
}
