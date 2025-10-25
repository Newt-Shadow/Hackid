package y3;

import t3.a;
/* loaded from: classes.dex */
public abstract class i implements a.b {

    /* renamed from: a  reason: collision with root package name */
    public final String f32844a;

    public i(String str) {
        this.f32844a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f32844a;
    }
}
