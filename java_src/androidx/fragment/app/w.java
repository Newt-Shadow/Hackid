package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* loaded from: classes.dex */
public abstract class w {
    public p b(Context context, String str, Bundle bundle) {
        return p.instantiate(context, str, bundle);
    }

    public abstract View c(int i10);

    public abstract boolean d();
}
