package i5;

import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class s extends y5.c implements t {
    public s() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // y5.c
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            q();
        } else {
            G();
        }
        return true;
    }
}
