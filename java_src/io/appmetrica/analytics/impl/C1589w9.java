package io.appmetrica.analytics.impl;

import java.util.LinkedList;
/* renamed from: io.appmetrica.analytics.impl.w9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1589w9 extends AbstractC1670zf {

    /* renamed from: a  reason: collision with root package name */
    public final C1373nh f20855a;

    /* renamed from: b  reason: collision with root package name */
    public final C1423ph f20856b;

    /* renamed from: c  reason: collision with root package name */
    public final C1074bh f20857c;

    public C1589w9(C1386o5 c1386o5) {
        this.f20855a = new C1373nh(c1386o5);
        this.f20856b = new C1423ph(c1386o5);
        this.f20857c = new C1074bh(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1670zf
    public final AbstractC1216h9 a(int i10) {
        LinkedList linkedList = new LinkedList();
        int ordinal = EnumC1367nb.a(i10).ordinal();
        if (ordinal != 1) {
            if (ordinal != 3) {
                if (ordinal == 27) {
                    linkedList.add(this.f20856b);
                    linkedList.add(this.f20855a);
                }
            } else {
                linkedList.add(this.f20857c);
            }
        } else {
            linkedList.add(this.f20855a);
        }
        return new C1191g9(linkedList);
    }
}
