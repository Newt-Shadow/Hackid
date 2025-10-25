package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Hb implements Gb {

    /* renamed from: a  reason: collision with root package name */
    private final int f10193a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10194b;

    /* renamed from: c  reason: collision with root package name */
    private int f10195c = 0;

    public Hb(int i10, int i11) {
        this.f10193a = i10;
        this.f10194b = i11;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public int a() {
        return this.f10194b;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public boolean b() {
        int i10 = this.f10195c;
        this.f10195c = i10 + 1;
        if (i10 < this.f10193a) {
            return true;
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public void c() {
        this.f10195c = 0;
    }
}
