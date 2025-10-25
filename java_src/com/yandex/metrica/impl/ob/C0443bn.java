package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.bn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0443bn {

    /* renamed from: a  reason: collision with root package name */
    private final C0418an f12093a;

    /* renamed from: b  reason: collision with root package name */
    private final Zm f12094b;

    public C0443bn(C0467cm c0467cm, String str) {
        this(new C0418an(30, 50, 4000, str, c0467cm), new Zm(4500, str, c0467cm));
    }

    synchronized boolean a(C0417am c0417am, String str, String str2) {
        if (c0417am.size() >= this.f12093a.a().a() && (this.f12093a.a().a() != c0417am.size() || !c0417am.containsKey(str))) {
            this.f12093a.a(str);
            return false;
        }
        if (!this.f12094b.a(c0417am, str, str2)) {
            c0417am.put(str, str2);
            return true;
        }
        this.f12094b.a(str);
        return false;
    }

    public boolean b(C0417am c0417am, String str, String str2) {
        if (c0417am != null) {
            String a10 = this.f12093a.b().a(str);
            String a11 = this.f12093a.c().a(str2);
            if (c0417am.containsKey(a10)) {
                String str3 = c0417am.get(a10);
                if (a11 == null || !a11.equals(str3)) {
                    return a(c0417am, a10, a11);
                }
                return false;
            } else if (a11 != null) {
                return a(c0417am, a10, a11);
            } else {
                return false;
            }
        }
        return false;
    }

    C0443bn(C0418an c0418an, Zm zm) {
        this.f12093a = c0418an;
        this.f12094b = zm;
    }
}
