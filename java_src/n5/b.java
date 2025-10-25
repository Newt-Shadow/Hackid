package n5;

import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class b {
    public static com.google.android.gms.common.api.b a(Status status) {
        if (status.m()) {
            return new com.google.android.gms.common.api.j(status);
        }
        return new com.google.android.gms.common.api.b(status);
    }
}
