package n5;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
/* loaded from: classes.dex */
public final class o0 extends o5.a {
    public static final Parcelable.Creator<o0> CREATOR = new p0();

    /* renamed from: a  reason: collision with root package name */
    final int f26358a;

    /* renamed from: b  reason: collision with root package name */
    private final Account f26359b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26360c;

    /* renamed from: d  reason: collision with root package name */
    private final GoogleSignInAccount f26361d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(int i10, Account account, int i11, GoogleSignInAccount googleSignInAccount) {
        this.f26358a = i10;
        this.f26359b = account;
        this.f26360c = i11;
        this.f26361d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f26358a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.p(parcel, 2, this.f26359b, i10, false);
        o5.c.k(parcel, 3, this.f26360c);
        o5.c.p(parcel, 4, this.f26361d, i10, false);
        o5.c.b(parcel, a10);
    }

    public o0(Account account, int i10, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i10, googleSignInAccount);
    }
}
