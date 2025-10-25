package z6;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import e7.c0;
import e7.t;
import f7.k;
import java.io.IOException;
import s6.q;
/* loaded from: classes.dex */
public final class d implements q {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences.Editor f33577a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33578b;

    public d(Context context, String str, String str2) {
        if (str != null) {
            this.f33578b = str;
            Context applicationContext = context.getApplicationContext();
            if (str2 == null) {
                this.f33577a = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
                return;
            } else {
                this.f33577a = applicationContext.getSharedPreferences(str2, 0).edit();
                return;
            }
        }
        throw new IllegalArgumentException("keysetName cannot be null");
    }

    @Override // s6.q
    public void a(t tVar) {
        if (this.f33577a.putString(this.f33578b, k.b(tVar.f())).commit()) {
            return;
        }
        throw new IOException("Failed to write to SharedPreferences");
    }

    @Override // s6.q
    public void b(c0 c0Var) {
        if (this.f33577a.putString(this.f33578b, k.b(c0Var.f())).commit()) {
            return;
        }
        throw new IOException("Failed to write to SharedPreferences");
    }
}
