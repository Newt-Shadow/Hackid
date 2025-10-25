package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* renamed from: io.appmetrica.analytics.impl.ha  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1217ha implements Parcelable {
    public static final C1192ga CREATOR = new C1192ga();

    /* renamed from: a  reason: collision with root package name */
    public final Boolean f19730a;

    /* renamed from: b  reason: collision with root package name */
    public final IdentifierStatus f19731b;

    /* renamed from: c  reason: collision with root package name */
    public final String f19732c;

    public C1217ha(Boolean bool, IdentifierStatus identifierStatus, String str) {
        this.f19730a = bool;
        this.f19731b = identifierStatus;
        this.f19732c = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1217ha) {
            C1217ha c1217ha = (C1217ha) obj;
            return kotlin.jvm.internal.m.a(this.f19730a, c1217ha.f19730a) && this.f19731b == c1217ha.f19731b && kotlin.jvm.internal.m.a(this.f19732c, c1217ha.f19732c);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.f19730a;
        int hashCode = (this.f19731b.hashCode() + ((bool == null ? 0 : bool.hashCode()) * 31)) * 31;
        String str = this.f19732c;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "FeaturesInternal(sslPinning=" + this.f19730a + ", status=" + this.f19731b + ", errorExplanation=" + this.f19732c + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeValue(this.f19730a);
        parcel.writeString(this.f19731b.getValue());
        parcel.writeString(this.f19732c);
    }

    public C1217ha() {
        this(null, IdentifierStatus.UNKNOWN, null);
    }
}
