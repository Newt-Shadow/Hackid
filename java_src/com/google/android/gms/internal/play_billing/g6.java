package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class g6 extends j6 implements i6 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g6(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final int A(int i10, String str, String str2) {
        Parcel k10 = k();
        k10.writeInt(i10);
        k10.writeString(str);
        k10.writeString(str2);
        Parcel e12 = e1(1, k10);
        int readInt = e12.readInt();
        e12.recycle();
        return readInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.i6
    public final void C(int i10, String str, Bundle bundle, i5 i5Var) {
        Parcel k10 = k();
        k10.writeInt(21);
        k10.writeString(str);
        l6.c(k10, bundle);
        k10.writeStrongBinder(i5Var);
        g1(1601, k10);
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle C0(int i10, String str, String str2, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(3);
        k10.writeString(str);
        k10.writeString(str2);
        l6.c(k10, bundle);
        Parcel e12 = e1(2, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle E(int i10, String str, String str2, String str3, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(6);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        l6.c(k10, bundle);
        Parcel e12 = e1(9, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final int O0(int i10, String str, String str2, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(i10);
        k10.writeString(str);
        k10.writeString(str2);
        l6.c(k10, bundle);
        Parcel e12 = e1(10, k10);
        int readInt = e12.readInt();
        e12.recycle();
        return readInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.i6
    public final void R0(int i10, String str, Bundle bundle, f6 f6Var) {
        Parcel k10 = k();
        k10.writeInt(21);
        k10.writeString(str);
        l6.c(k10, bundle);
        k10.writeStrongBinder(f6Var);
        g1(1401, k10);
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle S(int i10, String str, String str2, String str3) {
        Parcel k10 = k();
        k10.writeInt(3);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        Parcel e12 = e1(4, k10);
        Bundle bundle = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle T0(int i10, String str, String str2, String str3, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(i10);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        l6.c(k10, bundle);
        Parcel e12 = e1(11, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle U(int i10, String str, String str2, String str3, String str4) {
        Parcel k10 = k();
        k10.writeInt(3);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        k10.writeString(null);
        Parcel e12 = e1(3, k10);
        Bundle bundle = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle Z0(int i10, String str, String str2, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(9);
        k10.writeString(str);
        k10.writeString(str2);
        l6.c(k10, bundle);
        Parcel e12 = e1(902, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle p(int i10, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel k10 = k();
        k10.writeInt(i10);
        k10.writeString(str);
        k10.writeString(str2);
        l6.c(k10, bundle);
        l6.c(k10, bundle2);
        Parcel e12 = e1(901, k10);
        Bundle bundle3 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.i6
    public final void p0(int i10, String str, Bundle bundle, d6 d6Var) {
        Parcel k10 = k();
        k10.writeInt(18);
        k10.writeString(str);
        l6.c(k10, bundle);
        k10.writeStrongBinder(d6Var);
        f1(1301, k10);
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final int s(int i10, String str, String str2) {
        Parcel k10 = k();
        k10.writeInt(3);
        k10.writeString(str);
        k10.writeString(str2);
        Parcel e12 = e1(5, k10);
        int readInt = e12.readInt();
        e12.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle u(int i10, String str, String str2, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(9);
        k10.writeString(str);
        k10.writeString(str2);
        l6.c(k10, bundle);
        Parcel e12 = e1(12, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.i6
    public final void x0(int i10, String str, Bundle bundle, z1 z1Var) {
        Parcel k10 = k();
        k10.writeInt(21);
        k10.writeString(str);
        l6.c(k10, bundle);
        k10.writeStrongBinder(z1Var);
        g1(1501, k10);
    }

    @Override // com.google.android.gms.internal.play_billing.i6
    public final Bundle y0(int i10, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel k10 = k();
        k10.writeInt(i10);
        k10.writeString(str);
        k10.writeString(str2);
        k10.writeString(str3);
        k10.writeString(null);
        l6.c(k10, bundle);
        Parcel e12 = e1(8, k10);
        Bundle bundle2 = (Bundle) l6.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }
}
