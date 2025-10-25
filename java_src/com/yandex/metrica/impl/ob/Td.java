package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ud;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class Td implements InterfaceC1010z2<Ud.a, C0509ee> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f11410a;

    public Td(Ud ud2) {
        boolean z10;
        List<Ud.a> list = ud2.f11504b;
        kotlin.jvm.internal.m.d(list, "stateFromDisk.candidates");
        boolean z11 = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((Ud.a) it.next()).f11507c == EnumC0888u0.APP) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    z11 = false;
                    break;
                }
            }
        }
        this.f11410a = z11;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1010z2, id.Function2
    /* renamed from: a */
    public List<Ud.a> invoke(List<? extends Ud.a> list, C0509ee c0509ee) {
        boolean z10;
        List<Ud.a> d02;
        List<Ud.a> d03;
        Ud.a aVar = new Ud.a(c0509ee.f12323a, c0509ee.f12324b, c0509ee.f12327e);
        boolean z11 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((Ud.a) it.next()).f11507c == c0509ee.f12327e) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    z11 = true;
                    break;
                }
            }
        }
        if (!z11) {
            d02 = yc.w.d0(list, aVar);
            return d02;
        } else if (aVar.f11507c == EnumC0888u0.APP && this.f11410a) {
            d03 = yc.w.d0(list, aVar);
            return d03;
        } else {
            return null;
        }
    }
}
