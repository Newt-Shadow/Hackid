package d5;

import android.content.Intent;
import com.google.android.gms.auth.UserRecoverableAuthException;
/* loaded from: classes.dex */
public class c extends UserRecoverableAuthException {

    /* renamed from: d  reason: collision with root package name */
    private final int f14989d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(int i10, String str, Intent intent) {
        super(str, intent);
        this.f14989d = i10;
    }
}
