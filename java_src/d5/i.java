package d5;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.internal.auth.b3;
import com.google.android.gms.internal.auth.i4;
import com.google.android.gms.internal.auth.j1;
import com.google.android.gms.internal.auth.l4;
import com.google.android.gms.internal.auth.m0;
import com.google.android.gms.internal.auth.q3;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import l5.k;
import m6.Task;
import m6.n;
import n5.q;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f15013a = {"com.google", "com.google.work", "cn.google"};

    /* renamed from: b  reason: collision with root package name */
    public static final String f15014b = "androidPackageName";

    /* renamed from: c  reason: collision with root package name */
    private static final ComponentName f15015c = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: d  reason: collision with root package name */
    private static final q5.a f15016d = d.a("GoogleAuthUtil");

    public static void a(Context context, String str) {
        g(context, str, 0L);
    }

    public static String b(Context context, Account account, String str) {
        return c(context, account, str, new Bundle());
    }

    public static String c(Context context, Account account, String str, Bundle bundle) {
        p(account);
        return d(context, account, str, bundle, 0L, null).g();
    }

    public static TokenData d(final Context context, final Account account, final String str, Bundle bundle, long j10, Executor executor) {
        final Bundle bundle2;
        q.j("Calling this from your main thread can lead to deadlock");
        q.f(str, "Scope cannot be empty or null.");
        p(account);
        l(context, 8400000);
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle);
        }
        n(context, bundle2);
        m0.d(context);
        if (l4.c() && q(context)) {
            try {
                Bundle bundle3 = (Bundle) j(q3.a(context).b(account, str, bundle2), "token retrieval");
                k(bundle3);
                return h(context, "getTokenWithDetails", bundle3);
            } catch (com.google.android.gms.common.api.b e10) {
                m(e10, "token retrieval");
            }
        }
        return (TokenData) i(context, f15015c, new h() { // from class: d5.f
            @Override // d5.h
            public final Object a(IBinder iBinder) {
                return i.e(account, str, bundle2, context, iBinder);
            }
        }, 0L, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ TokenData e(Account account, String str, Bundle bundle, Context context, IBinder iBinder) {
        Bundle y10 = j1.d(iBinder).y(account, str, bundle);
        if (y10 != null) {
            return h(context, "getTokenWithDetails", y10);
        }
        throw new IOException("Service call returned null");
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.isRegister()" because "arg" is null
        	at jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(RegisterArg.java:173)
        	at jadx.core.dex.instructions.args.InsnArg.isSameVar(InsnArg.java:269)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:118)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ java.lang.Object f(java.lang.Object r0) {
        /*
            k(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d5.i.f(java.lang.Object):java.lang.Object");
    }

    public static void g(Context context, String str, long j10) {
        q.j("Calling this from your main thread can lead to deadlock");
        l(context, 8400000);
        Bundle bundle = new Bundle();
        n(context, bundle);
        m0.d(context);
        if (l4.c() && q(context)) {
            b3 a10 = q3.a(context);
            com.google.android.gms.internal.auth.g gVar = new com.google.android.gms.internal.auth.g();
            gVar.g(str);
            try {
                j(a10.d(gVar), "clear token");
                return;
            } catch (com.google.android.gms.common.api.b e10) {
                m(e10, "clear token");
            }
        }
        i(context, f15015c, new g(str, bundle), 0L, null);
    }

    private static TokenData h(Context context, String str, Bundle bundle) {
        TokenData tokenData;
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        o(context, "getTokenWithDetails", bundle.getString("Error"), (Intent) bundle.getParcelable("userRecoveryIntent"), (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent"));
        throw new a("Invalid state. Shouldn't happen");
    }

    private static Object i(Context context, ComponentName componentName, h hVar, long j10, Executor executor) {
        l5.a aVar = new l5.a();
        n5.i b10 = n5.i.b(context);
        try {
            try {
                if (b10.a(componentName, aVar, "GoogleAuthUtil", null)) {
                    try {
                        return hVar.a(aVar.a());
                    } catch (RemoteException | InterruptedException | TimeoutException e10) {
                        Log.i("GoogleAuthUtil", "Error on service connection.", e10);
                        throw new IOException("Error on service connection.", e10);
                    }
                }
                throw new IOException("Could not bind to service.");
            } finally {
                b10.d(componentName, aVar, "GoogleAuthUtil");
            }
        } catch (SecurityException e11) {
            Log.w("GoogleAuthUtil", String.format("SecurityException while bind to auth service: %s", e11.getMessage()));
            throw new IOException("SecurityException while binding to Auth service.", e11);
        }
    }

    private static Object j(Task task, String str) {
        try {
            return n.a(task);
        } catch (InterruptedException e10) {
            String format = String.format("Interrupted while waiting for the task of %s to finish.", str);
            f15016d.e(format, new Object[0]);
            throw new IOException(format, e10);
        } catch (CancellationException e11) {
            String format2 = String.format("Canceled while waiting for the task of %s to finish.", str);
            f15016d.e(format2, new Object[0]);
            throw new IOException(format2, e11);
        } catch (ExecutionException e12) {
            Throwable cause = e12.getCause();
            if (cause instanceof com.google.android.gms.common.api.b) {
                throw ((com.google.android.gms.common.api.b) cause);
            }
            String format3 = String.format("Unable to get a result for %s due to ExecutionException.", str);
            f15016d.e(format3, new Object[0]);
            throw new IOException(format3, e12);
        }
    }

    private static Object k(Object obj) {
        if (obj != null) {
            return obj;
        }
        f15016d.e("Service call returned null.", new Object[0]);
        throw new IOException("Service unavailable.");
    }

    private static void l(Context context, int i10) {
        try {
            k.a(context.getApplicationContext(), i10);
        } catch (GooglePlayServicesIncorrectManifestValueException e10) {
            e = e10;
            throw new a(e.getMessage(), e);
        } catch (l5.h e11) {
            e = e11;
            throw new a(e.getMessage(), e);
        } catch (l5.i e12) {
            throw new c(e12.b(), e12.getMessage(), e12.a());
        }
    }

    private static void m(com.google.android.gms.common.api.b bVar, String str) {
        f15016d.e("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(bVar));
    }

    private static void n(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        String str2 = f15014b;
        if (TextUtils.isEmpty(bundle.getString(str2))) {
            bundle.putString(str2, str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    private static void o(Context context, String str, String str2, Intent intent, PendingIntent pendingIntent) {
        com.google.android.gms.internal.auth.i a10 = com.google.android.gms.internal.auth.i.a(str2);
        q5.a aVar = f15016d;
        aVar.e(String.format("[GoogleAuthUtil] error status:%s with method:%s", a10, str), new Object[0]);
        if (!com.google.android.gms.internal.auth.i.BAD_AUTHENTICATION.equals(a10) && !com.google.android.gms.internal.auth.i.CAPTCHA.equals(a10) && !com.google.android.gms.internal.auth.i.NEED_PERMISSION.equals(a10) && !com.google.android.gms.internal.auth.i.NEED_REMOTE_CONSENT.equals(a10) && !com.google.android.gms.internal.auth.i.NEEDS_BROWSER.equals(a10) && !com.google.android.gms.internal.auth.i.USER_CANCEL.equals(a10) && !com.google.android.gms.internal.auth.i.DEVICE_MANAGEMENT_REQUIRED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_INTERNAL_ERROR.equals(a10) && !com.google.android.gms.internal.auth.i.DM_SYNC_DISABLED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_ADMIN_BLOCKED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_ADMIN_PENDING_APPROVAL.equals(a10) && !com.google.android.gms.internal.auth.i.DM_STALE_SYNC_REQUIRED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_DEACTIVATED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_REQUIRED.equals(a10) && !com.google.android.gms.internal.auth.i.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(a10) && !com.google.android.gms.internal.auth.i.DM_SCREENLOCK_REQUIRED.equals(a10)) {
            if (!com.google.android.gms.internal.auth.i.NETWORK_ERROR.equals(a10) && !com.google.android.gms.internal.auth.i.SERVICE_UNAVAILABLE.equals(a10) && !com.google.android.gms.internal.auth.i.INTNERNAL_ERROR.equals(a10) && !com.google.android.gms.internal.auth.i.AUTH_SECURITY_ERROR.equals(a10) && !com.google.android.gms.internal.auth.i.ACCOUNT_NOT_PRESENT.equals(a10)) {
                throw new a(str2);
            }
            throw new IOException(str2);
        }
        m0.d(context);
        if (i4.b()) {
            if (pendingIntent != null && intent != null) {
                throw UserRecoverableAuthException.b(str2, intent, pendingIntent);
            }
            if (l5.f.m().a(context) >= Integer.MAX_VALUE && pendingIntent == null) {
                aVar.b(String.format("Recovery PendingIntent is missing on current Gms version: %s for method: %s. It should always be present on or above Gms version %s. This indicates a bug in Gms implementation.", Integer.MAX_VALUE, str, Integer.MAX_VALUE), new Object[0]);
            }
            if (intent == null) {
                aVar.b(String.format("no recovery Intent found with status=%s for method=%s. This shouldn't happen", str2, str), new Object[0]);
            }
            throw new UserRecoverableAuthException(str2, intent);
        }
        throw new UserRecoverableAuthException(str2, intent);
    }

    private static void p(Account account) {
        if (account != null) {
            if (!TextUtils.isEmpty(account.name)) {
                String[] strArr = f15013a;
                for (int i10 = 0; i10 < 3; i10++) {
                    if (strArr[i10].equals(account.type)) {
                        return;
                    }
                }
                throw new IllegalArgumentException("Account type not supported");
            }
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        throw new IllegalArgumentException("Account cannot be null");
    }

    private static boolean q(Context context) {
        if (l5.f.m().h(context, 17895000) != 0) {
            return false;
        }
        List<String> s10 = l4.a().s();
        String str = context.getApplicationInfo().packageName;
        for (String str2 : s10) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }
}
