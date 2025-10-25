package l5;

import android.content.Intent;
/* loaded from: classes.dex */
public abstract class o extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f25320a;

    public o(String str, Intent intent) {
        super(str);
        this.f25320a = intent;
    }

    public Intent a() {
        return new Intent(this.f25320a);
    }
}
