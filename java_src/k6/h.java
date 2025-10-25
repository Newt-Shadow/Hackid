package k6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.List;
/* loaded from: classes.dex */
public final class h extends o5.a implements com.google.android.gms.common.api.k {
    public static final Parcelable.Creator<h> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    private final List f24774a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24775b;

    public h(List list, String str) {
        this.f24774a = list;
        this.f24775b = str;
    }

    @Override // com.google.android.gms.common.api.k
    public final Status d() {
        if (this.f24775b != null) {
            return Status.f5865f;
        }
        return Status.f5869j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f24774a;
        int a10 = o5.c.a(parcel);
        o5.c.r(parcel, 1, list, false);
        o5.c.q(parcel, 2, this.f24775b, false);
        o5.c.b(parcel, a10);
    }
}
