package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ma  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0704ma implements S7 {

    /* renamed from: a  reason: collision with root package name */
    private final S7 f12861a;

    public C0704ma(Context context, W7 w72, S7 s72) {
        this.f12861a = s72;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public int a(String str, int i10) {
        return this.f12861a.a(str, i10);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public void b() {
        this.f12861a.b();
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public long a(String str, long j10) {
        return this.f12861a.a(str, j10);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public String b(String str, String str2) {
        return this.f12861a.b(str, str2);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, String str2) {
        this.f12861a.a(str, str2);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean b(String str, boolean z10) {
        return this.f12861a.b(str, z10);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, boolean z10) {
        this.f12861a.a(str, z10);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str) {
        this.f12861a.b(str);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean a(String str) {
        return this.f12861a.a(str);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, long j10) {
        this.f12861a.b(str, j10);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public Set<String> a() {
        return this.f12861a.a();
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, int i10) {
        this.f12861a.b(str, i10);
        return this;
    }
}
