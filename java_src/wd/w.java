package wd;

import yd.f0;
/* loaded from: classes2.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f32127a = new f0("NONE");

    /* renamed from: b  reason: collision with root package name */
    private static final f0 f32128b = new f0("PENDING");

    public static final p a(Object obj) {
        if (obj == null) {
            obj = xd.m.f32759a;
        }
        return new v(obj);
    }

    public static final d d(u uVar, ad.i iVar, int i10, vd.a aVar) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < 2) {
            z10 = true;
        }
        if ((z10 || i10 == -2) && aVar == vd.a.f31355b) {
            return uVar;
        }
        return t.a(uVar, iVar, i10, aVar);
    }
}
