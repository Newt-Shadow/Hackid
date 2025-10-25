package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.y0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0984y0 {
    NATIVE(0),
    JS(1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f13974a;

    EnumC0984y0(int i10) {
        this.f13974a = i10;
    }

    public static EnumC0984y0 a(int i10) {
        EnumC0984y0[] values = values();
        for (int i11 = 0; i11 < 2; i11++) {
            EnumC0984y0 enumC0984y0 = values[i11];
            if (enumC0984y0.f13974a == i10) {
                return enumC0984y0;
            }
        }
        return NATIVE;
    }
}
