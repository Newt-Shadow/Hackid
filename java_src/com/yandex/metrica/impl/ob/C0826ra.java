package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.ra  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0826ra implements Parcelable {
    public static final Parcelable.Creator<C0826ra> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final C0803qa f13490a;

    /* renamed from: b  reason: collision with root package name */
    public final C0803qa f13491b;

    /* renamed from: c  reason: collision with root package name */
    public final C0803qa f13492c;

    /* renamed from: com.yandex.metrica.impl.ob.ra$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0826ra> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0826ra createFromParcel(Parcel parcel) {
            return new C0826ra(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0826ra[] newArray(int i10) {
            return new C0826ra[i10];
        }
    }

    public C0826ra() {
        this(null, null, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "DiagnosticsConfigsHolder{activationConfig=" + this.f13490a + ", clidsInfoConfig=" + this.f13491b + ", preloadInfoConfig=" + this.f13492c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f13490a, i10);
        parcel.writeParcelable(this.f13491b, i10);
        parcel.writeParcelable(this.f13492c, i10);
    }

    public C0826ra(C0803qa c0803qa, C0803qa c0803qa2, C0803qa c0803qa3) {
        this.f13490a = c0803qa;
        this.f13491b = c0803qa2;
        this.f13492c = c0803qa3;
    }

    protected C0826ra(Parcel parcel) {
        this.f13490a = (C0803qa) parcel.readParcelable(C0803qa.class.getClassLoader());
        this.f13491b = (C0803qa) parcel.readParcelable(C0803qa.class.getClassLoader());
        this.f13492c = (C0803qa) parcel.readParcelable(C0803qa.class.getClassLoader());
    }
}
