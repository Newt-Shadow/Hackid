package com.yandex.metrica;
/* loaded from: classes.dex */
public enum c {
    PHONE("phone"),
    TABLET("tablet"),
    TV("tv");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f9600a;

    c(String str) {
        this.f9600a = str;
    }

    public static c a(String str) {
        c[] values = values();
        for (int i10 = 0; i10 < 3; i10++) {
            c cVar = values[i10];
            if (cVar.f9600a.equals(str)) {
                return cVar;
            }
        }
        return null;
    }

    public String b() {
        return this.f9600a;
    }
}
