package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class d5 extends com.google.android.gms.internal.measurement.n0 implements i6.e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d5(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // i6.e
    public final void F(long j10, String str, String str2, String str3) {
        Parcel k10 = k();
        k10.writeLong(j10);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        e1(10, k10);
    }

    @Override // i6.e
    public final void G0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(4, k10);
    }

    @Override // i6.e
    public final void H(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(18, k10);
    }

    @Override // i6.e
    public final List J(String str, String str2, String str3) {
        Parcel k10 = k();
        k10.writeString(null);
        k10.writeString(str2);
        k10.writeString(str3);
        Parcel a10 = a(17, k10);
        ArrayList createTypedArrayList = a10.createTypedArrayList(i.CREATOR);
        a10.recycle();
        return createTypedArrayList;
    }

    @Override // i6.e
    public final void L0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(27, k10);
    }

    @Override // i6.e
    public final void O(ae aeVar, i6.g0 g0Var, i6.k kVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        com.google.android.gms.internal.measurement.p0.c(k10, g0Var);
        com.google.android.gms.internal.measurement.p0.d(k10, kVar);
        e1(29, k10);
    }

    @Override // i6.e
    public final List P0(String str, String str2, boolean z10, ae aeVar) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        int i10 = com.google.android.gms.internal.measurement.p0.f6631b;
        k10.writeInt(z10 ? 1 : 0);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        Parcel a10 = a(14, k10);
        ArrayList createTypedArrayList = a10.createTypedArrayList(ud.CREATOR);
        a10.recycle();
        return createTypedArrayList;
    }

    @Override // i6.e
    public final void T(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(25, k10);
    }

    @Override // i6.e
    public final String U0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        Parcel a10 = a(11, k10);
        String readString = a10.readString();
        a10.recycle();
        return readString;
    }

    @Override // i6.e
    public final List V0(String str, String str2, ae aeVar) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        Parcel a10 = a(16, k10);
        ArrayList createTypedArrayList = a10.createTypedArrayList(i.CREATOR);
        a10.recycle();
        return createTypedArrayList;
    }

    @Override // i6.e
    public final void a1(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(20, k10);
    }

    @Override // i6.e
    public final void b0(g0 g0Var, ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, g0Var);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(1, k10);
    }

    @Override // i6.e
    public final void e0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(6, k10);
    }

    @Override // i6.e
    public final void g0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(26, k10);
    }

    @Override // i6.e
    public final void k0(ae aeVar, g gVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        com.google.android.gms.internal.measurement.p0.c(k10, gVar);
        e1(30, k10);
    }

    @Override // i6.e
    public final List l(String str, String str2, String str3, boolean z10) {
        Parcel k10 = k();
        k10.writeString(null);
        k10.writeString(str2);
        k10.writeString(str3);
        int i10 = com.google.android.gms.internal.measurement.p0.f6631b;
        k10.writeInt(z10 ? 1 : 0);
        Parcel a10 = a(15, k10);
        ArrayList createTypedArrayList = a10.createTypedArrayList(ud.CREATOR);
        a10.recycle();
        return createTypedArrayList;
    }

    @Override // i6.e
    public final byte[] m0(g0 g0Var, String str) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, g0Var);
        k10.writeString(str);
        Parcel a10 = a(9, k10);
        byte[] createByteArray = a10.createByteArray();
        a10.recycle();
        return createByteArray;
    }

    @Override // i6.e
    public final void o(i iVar, ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, iVar);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(12, k10);
    }

    @Override // i6.e
    public final void s0(ud udVar, ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, udVar);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(2, k10);
    }

    @Override // i6.e
    public final void t(ae aeVar, Bundle bundle, i6.h hVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        com.google.android.gms.internal.measurement.p0.c(k10, bundle);
        com.google.android.gms.internal.measurement.p0.d(k10, hVar);
        e1(31, k10);
    }

    @Override // i6.e
    public final i6.a t0(ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        Parcel a10 = a(21, k10);
        i6.a aVar = (i6.a) com.google.android.gms.internal.measurement.p0.b(a10, i6.a.CREATOR);
        a10.recycle();
        return aVar;
    }

    @Override // i6.e
    public final void w0(Bundle bundle, ae aeVar) {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.p0.c(k10, bundle);
        com.google.android.gms.internal.measurement.p0.c(k10, aeVar);
        e1(19, k10);
    }
}
