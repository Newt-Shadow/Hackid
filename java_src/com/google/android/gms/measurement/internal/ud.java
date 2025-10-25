package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class ud extends o5.a {
    public static final Parcelable.Creator<ud> CREATOR = new vd();

    /* renamed from: a  reason: collision with root package name */
    public final int f8094a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8095b;

    /* renamed from: c  reason: collision with root package name */
    public final long f8096c;

    /* renamed from: d  reason: collision with root package name */
    public final Long f8097d;

    /* renamed from: e  reason: collision with root package name */
    public final String f8098e;

    /* renamed from: f  reason: collision with root package name */
    public final String f8099f;

    /* renamed from: g  reason: collision with root package name */
    public final Double f8100g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ud(int i10, String str, long j10, Long l10, Float f10, String str2, String str3, Double d10) {
        this.f8094a = i10;
        this.f8095b = str;
        this.f8096c = j10;
        this.f8097d = l10;
        this.f8100g = i10 == 1 ? f10 != null ? Double.valueOf(f10.doubleValue()) : null : d10;
        this.f8098e = str2;
        this.f8099f = str3;
    }

    public final Object g() {
        Long l10 = this.f8097d;
        if (l10 != null) {
            return l10;
        }
        Double d10 = this.f8100g;
        if (d10 != null) {
            return d10;
        }
        String str = this.f8098e;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        vd.a(this, parcel, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ud(wd wdVar) {
        this(wdVar.f8226c, wdVar.f8227d, wdVar.f8228e, wdVar.f8225b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ud(String str, long j10, Object obj, String str2) {
        n5.q.e(str);
        this.f8094a = 2;
        this.f8095b = str;
        this.f8096c = j10;
        this.f8099f = str2;
        if (obj == null) {
            this.f8097d = null;
            this.f8100g = null;
            this.f8098e = null;
        } else if (obj instanceof Long) {
            this.f8097d = (Long) obj;
            this.f8100g = null;
            this.f8098e = null;
        } else if (obj instanceof String) {
            this.f8097d = null;
            this.f8100g = null;
            this.f8098e = (String) obj;
        } else if (obj instanceof Double) {
            this.f8097d = null;
            this.f8100g = (Double) obj;
            this.f8098e = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
