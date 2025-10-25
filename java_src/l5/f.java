package l5;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.k;
import com.dexterous.flutterlocalnotifications.v0;
import com.google.android.gms.common.api.GoogleApiActivity;
import m5.o0;
import m5.p0;
/* loaded from: classes.dex */
public class f extends g {

    /* renamed from: c  reason: collision with root package name */
    private String f25288c;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f25286e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static final f f25287f = new f();

    /* renamed from: d  reason: collision with root package name */
    public static final int f25285d = g.f25293a;

    public static f m() {
        return f25287f;
    }

    @Override // l5.g
    public Intent b(Context context, int i10, String str) {
        return super.b(context, i10, str);
    }

    @Override // l5.g
    public PendingIntent c(Context context, int i10, int i11) {
        return super.c(context, i10, i11);
    }

    @Override // l5.g
    public final String e(int i10) {
        return super.e(i10);
    }

    @Override // l5.g
    public int g(Context context) {
        return super.g(context);
    }

    @Override // l5.g
    public int h(Context context, int i10) {
        return super.h(context, i10);
    }

    @Override // l5.g
    public final boolean j(int i10) {
        return super.j(i10);
    }

    public Dialog k(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        return p(activity, i10, n5.f0.b(activity, b(activity, i10, "d"), i11), onCancelListener, null);
    }

    public PendingIntent l(Context context, b bVar) {
        if (bVar.m()) {
            return bVar.l();
        }
        return c(context, bVar.g(), 0);
    }

    public boolean n(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog k10 = k(activity, i10, i11, onCancelListener);
        if (k10 == null) {
            return false;
        }
        s(activity, k10, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public void o(Context context, int i10) {
        t(context, i10, null, d(context, i10, 0, "n"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    final Dialog p(Context context, int i10, n5.f0 f0Var, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = null;
        if (i10 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(n5.c0.c(context, i10));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String b10 = n5.c0.b(context, i10);
        if (b10 != null) {
            if (f0Var == null) {
                f0Var = onClickListener;
            }
            builder.setPositiveButton(b10, f0Var);
        }
        String f10 = n5.c0.f(context, i10);
        if (f10 != null) {
            builder.setTitle(f10);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i10)), new IllegalArgumentException());
        return builder.create();
    }

    public final Dialog q(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(n5.c0.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        s(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    public final p0 r(Context context, o0 o0Var) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        p0 p0Var = new p0(o0Var);
        a6.f.p(context, p0Var, intentFilter);
        p0Var.a(context);
        if (!i(context, "com.google.android.gms")) {
            o0Var.a();
            p0Var.b();
            return null;
        }
        return p0Var;
    }

    final void s(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof androidx.fragment.app.u) {
                n.y(dialog, onCancelListener).x(((androidx.fragment.app.u) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        c.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    final void t(Context context, int i10, String str, PendingIntent pendingIntent) {
        int i11;
        String str2;
        NotificationChannel notificationChannel;
        CharSequence name;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i10), null), new IllegalArgumentException());
        if (i10 == 18) {
            u(context);
        } else if (pendingIntent == null) {
            if (i10 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String e10 = n5.c0.e(context, i10);
            String d10 = n5.c0.d(context, i10);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) n5.q.k(context.getSystemService("notification"));
            k.e J = new k.e(context).y(true).g(true).o(e10).J(new k.c().n(d10));
            if (com.google.android.gms.common.util.h.c(context)) {
                n5.q.n(com.google.android.gms.common.util.k.b());
                J.H(context.getApplicationInfo().icon).C(2);
                if (com.google.android.gms.common.util.h.d(context)) {
                    J.a(j5.a.f24455a, resources.getString(j5.b.f24470o), pendingIntent);
                } else {
                    J.m(pendingIntent);
                }
            } else {
                J.H(17301642).L(resources.getString(j5.b.f24463h)).Q(System.currentTimeMillis()).m(pendingIntent).n(d10);
            }
            if (com.google.android.gms.common.util.k.e()) {
                n5.q.n(com.google.android.gms.common.util.k.e());
                synchronized (f25286e) {
                    str2 = this.f25288c;
                }
                if (str2 == null) {
                    str2 = "com.google.android.gms.availability";
                    notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String string = context.getResources().getString(j5.b.f24462g);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(v0.a("com.google.android.gms.availability", string, 4));
                    } else {
                        name = notificationChannel.getName();
                        if (!string.contentEquals(name)) {
                            notificationChannel.setName(string);
                            notificationManager.createNotificationChannel(notificationChannel);
                        }
                    }
                }
                J.i(str2);
            }
            Notification d11 = J.d();
            if (i10 != 1 && i10 != 2 && i10 != 3) {
                i11 = 39789;
            } else {
                k.f25304b.set(false);
                i11 = 10436;
            }
            notificationManager.notify(i11, d11);
        }
    }

    final void u(Context context) {
        new p(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean v(Activity activity, m5.i iVar, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog p10 = p(activity, i10, n5.f0.c(iVar, b(activity, i10, "d"), 2), onCancelListener, null);
        if (p10 == null) {
            return false;
        }
        s(activity, p10, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public final boolean w(Context context, b bVar, int i10) {
        PendingIntent l10;
        if (t5.b.a(context) || (l10 = l(context, bVar)) == null) {
            return false;
        }
        t(context, bVar.g(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, l10, i10, true), a6.g.f116a | 134217728));
        return true;
    }
}
