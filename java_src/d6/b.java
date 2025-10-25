package d6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public final class b extends o5.a implements com.google.android.gms.common.api.k {

    /* renamed from: a  reason: collision with root package name */
    private final Status f15020a;

    /* renamed from: b  reason: collision with root package name */
    public static final b f15019b = new b(Status.f5865f);
    public static final Parcelable.Creator<b> CREATOR = new c();

    public b(Status status) {
        this.f15020a = status;
    }

    @Override // com.google.android.gms.common.api.k
    public final Status d() {
        return this.f15020a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.p(parcel, 1, this.f15020a, i10, false);
        o5.c.b(parcel, a10);
    }
}
