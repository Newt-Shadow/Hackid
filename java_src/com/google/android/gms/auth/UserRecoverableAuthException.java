package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import n5.q;
@KeepName
/* loaded from: classes.dex */
public class UserRecoverableAuthException extends d5.a {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f5797a;

    /* renamed from: b  reason: collision with root package name */
    private final PendingIntent f5798b;

    /* renamed from: c  reason: collision with root package name */
    private final b f5799c;

    public UserRecoverableAuthException(String str, Intent intent) {
        this(str, intent, null, b.LEGACY);
    }

    public static UserRecoverableAuthException b(String str, Intent intent, PendingIntent pendingIntent) {
        q.k(intent);
        q.k(pendingIntent);
        return new UserRecoverableAuthException(str, intent, pendingIntent, b.AUTH_INSTANTIATION);
    }

    public Intent a() {
        Intent intent = this.f5797a;
        if (intent == null) {
            int ordinal = this.f5799c.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        Log.e("Auth", "this instantiation of UserRecoverableAuthException doesn't support an Intent.");
                        return null;
                    }
                    return null;
                }
                Log.e("Auth", "This shouldn't happen. Gms API throwing this exception should support the recovery Intent.");
                return null;
            }
            Log.w("Auth", "Make sure that an intent was provided to class instantiation.");
            return null;
        }
        return new Intent(intent);
    }

    private UserRecoverableAuthException(String str, Intent intent, PendingIntent pendingIntent, b bVar) {
        super(str);
        this.f5798b = pendingIntent;
        this.f5797a = intent;
        this.f5799c = (b) q.k(bVar);
    }
}
