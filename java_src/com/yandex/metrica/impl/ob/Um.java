package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Um implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final int f11625a;

    public Um(int i10) {
        this.f11625a = i10;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f11625a;
    }

    public String toString() {
        return "BytesTruncatedInfo{bytesTruncated=" + this.f11625a + '}';
    }

    public static Vm a(Vm... vmArr) {
        int i10 = 0;
        for (Vm vm : vmArr) {
            if (vm != null) {
                i10 += vm.a();
            }
        }
        return new Um(i10);
    }
}
