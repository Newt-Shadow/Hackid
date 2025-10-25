package i6;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class g0 extends o5.a {
    public static final Parcelable.Creator<g0> CREATOR = new h0();

    /* renamed from: a  reason: collision with root package name */
    public final List f17295a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(List list) {
        this.f17295a = list;
    }

    public static g0 g(d0... d0VarArr) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(d0VarArr[0].zza()));
        return new g0(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f17295a;
        int a10 = o5.c.a(parcel);
        o5.c.m(parcel, 1, list, false);
        o5.c.b(parcel, a10);
    }
}
