package io.appmetrica.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.impl.C1292kb;
/* loaded from: classes2.dex */
public class IdentifiersResult implements Parcelable {
    public static final Parcelable.Creator<IdentifiersResult> CREATOR = new C1292kb();
    public final String errorExplanation;

    /* renamed from: id  reason: collision with root package name */
    public final String f21091id;
    public final IdentifierStatus status;

    public IdentifiersResult(String str, IdentifierStatus identifierStatus, String str2) {
        this.f21091id = str;
        this.status = identifierStatus;
        this.errorExplanation = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IdentifiersResult identifiersResult = (IdentifiersResult) obj;
        String str = this.f21091id;
        if (str == null ? identifiersResult.f21091id != null : !str.equals(identifiersResult.f21091id)) {
            return false;
        }
        if (this.status != identifiersResult.status) {
            return false;
        }
        String str2 = this.errorExplanation;
        if (str2 != null) {
            return str2.equals(identifiersResult.errorExplanation);
        }
        if (identifiersResult.errorExplanation == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f21091id;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode = (this.status.hashCode() + (i10 * 31)) * 31;
        String str2 = this.errorExplanation;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return hashCode + i11;
    }

    public String toString() {
        return "IdentifiersResult{id='" + this.f21091id + "', status=" + this.status + ", errorExplanation='" + this.errorExplanation + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f21091id);
        parcel.writeString(this.status.getValue());
        parcel.writeString(this.errorExplanation);
    }
}
