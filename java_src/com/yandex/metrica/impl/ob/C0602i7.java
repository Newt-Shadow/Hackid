package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.i7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0602i7 implements InterfaceC0741nm<File, String> {

    /* renamed from: a  reason: collision with root package name */
    private final C0452c7 f12595a;

    /* renamed from: b  reason: collision with root package name */
    private final C0577h7 f12596b;

    public C0602i7(C0452c7 c0452c7, C0577h7 c0577h7) {
        this.f12595a = c0452c7;
        this.f12596b = c0577h7;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
    public String a(File file) {
        return this.f12596b.a(file, this.f12595a);
    }
}
