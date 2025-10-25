package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import i5.b;
import i5.y;
import n5.q;
import o5.c;
/* loaded from: classes.dex */
public final class SignInConfiguration extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new y();

    /* renamed from: a  reason: collision with root package name */
    private final String f5847a;

    /* renamed from: b  reason: collision with root package name */
    private final GoogleSignInOptions f5848b;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f5847a = q.e(str);
        this.f5848b = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f5847a.equals(signInConfiguration.f5847a)) {
            GoogleSignInOptions googleSignInOptions = this.f5848b;
            GoogleSignInOptions googleSignInOptions2 = signInConfiguration.f5848b;
            if (googleSignInOptions == null) {
                if (googleSignInOptions2 == null) {
                    return true;
                }
            } else if (googleSignInOptions.equals(googleSignInOptions2)) {
                return true;
            }
        }
        return false;
    }

    public final GoogleSignInOptions g() {
        return this.f5848b;
    }

    public final int hashCode() {
        return new b().a(this.f5847a).a(this.f5848b).b();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f5847a;
        int a10 = c.a(parcel);
        c.q(parcel, 2, str, false);
        c.p(parcel, 5, this.f5848b, i10, false);
        c.b(parcel, a10);
    }
}
