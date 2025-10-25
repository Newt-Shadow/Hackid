package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import n5.q;
/* loaded from: classes.dex */
public class SignInAccount extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    final String f5842a;

    /* renamed from: b  reason: collision with root package name */
    private final GoogleSignInAccount f5843b;

    /* renamed from: c  reason: collision with root package name */
    final String f5844c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f5843b = googleSignInAccount;
        this.f5842a = q.f(str, "8.3 and 8.4 SDKs require non-null email");
        this.f5844c = q.f(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    public final GoogleSignInAccount g() {
        return this.f5843b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f5842a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 4, str, false);
        o5.c.p(parcel, 7, this.f5843b, i10, false);
        o5.c.q(parcel, 8, this.f5844c, false);
        o5.c.b(parcel, a10);
    }
}
