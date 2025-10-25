package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.qa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0803qa implements Parcelable {
    public static final Parcelable.Creator<C0803qa> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f13255a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13256b;

    /* renamed from: com.yandex.metrica.impl.ob.qa$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0803qa> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0803qa createFromParcel(Parcel parcel) {
            return new C0803qa(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0803qa[] newArray(int i10) {
            return new C0803qa[i10];
        }
    }

    public C0803qa(long j10, int i10) {
        this.f13255a = j10;
        this.f13256b = i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "DiagnosticsConfig{expirationTimestampSeconds=" + this.f13255a + ", intervalSeconds=" + this.f13256b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f13255a);
        parcel.writeInt(this.f13256b);
    }

    protected C0803qa(Parcel parcel) {
        this.f13255a = parcel.readLong();
        this.f13256b = parcel.readInt();
    }
}
