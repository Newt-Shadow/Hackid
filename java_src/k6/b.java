package k6;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public final class b extends o5.a implements com.google.android.gms.common.api.k {
    public static final Parcelable.Creator<b> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f24771a;

    /* renamed from: b  reason: collision with root package name */
    private int f24772b;

    /* renamed from: c  reason: collision with root package name */
    private Intent f24773c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i10, int i11, Intent intent) {
        this.f24771a = i10;
        this.f24772b = i11;
        this.f24773c = intent;
    }

    @Override // com.google.android.gms.common.api.k
    public final Status d() {
        if (this.f24772b == 0) {
            return Status.f5865f;
        }
        return Status.f5869j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f24771a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.k(parcel, 2, this.f24772b);
        o5.c.p(parcel, 3, this.f24773c, i10, false);
        o5.c.b(parcel, a10);
    }
}
