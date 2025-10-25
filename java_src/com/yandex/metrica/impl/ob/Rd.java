package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Rd {

    /* renamed from: a  reason: collision with root package name */
    private final String f11197a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11198b;

    public Rd(String str) {
        this(str, null);
    }

    public String a() {
        return this.f11198b;
    }

    public String b() {
        return this.f11197a;
    }

    public Rd(String str, String str2) {
        this.f11197a = str;
        this.f11198b = a(str2);
    }

    public final String a(String str) {
        if (str != null) {
            return this.f11197a + str;
        }
        return this.f11197a;
    }
}
