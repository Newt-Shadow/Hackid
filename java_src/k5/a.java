package k5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class a extends o5.a {
    public static final Parcelable.Creator<a> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final Intent f24707a;

    public a(Intent intent) {
        this.f24707a = intent;
    }

    public Intent g() {
        return this.f24707a;
    }

    public String i() {
        String stringExtra = this.f24707a.getStringExtra("google.message_id");
        if (stringExtra == null) {
            return this.f24707a.getStringExtra("message_id");
        }
        return stringExtra;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer l() {
        if (this.f24707a.hasExtra("google.product_id")) {
            return Integer.valueOf(this.f24707a.getIntExtra("google.product_id", 0));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.p(parcel, 1, this.f24707a, i10, false);
        o5.c.b(parcel, a10);
    }
}
