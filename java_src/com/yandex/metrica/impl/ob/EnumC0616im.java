package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.im  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0616im {
    LOGIN("login"),
    LOGOUT("logout"),
    SWITCH("switch"),
    UPDATE("update");
    

    /* renamed from: a  reason: collision with root package name */
    private String f12624a;

    EnumC0616im(String str) {
        this.f12624a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f12624a;
    }
}
