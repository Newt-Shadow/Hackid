package a4;

import t3.a;
/* loaded from: classes.dex */
public abstract class b implements a.b {
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SCTE-35 splice command: type=" + getClass().getSimpleName();
    }
}
