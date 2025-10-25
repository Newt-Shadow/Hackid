package y4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import io.appmetrica.analytics.impl.C1415p9;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: e  reason: collision with root package name */
    private static y f33008e;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f33009a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList f33010b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Object f33011c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private int f33012d = 0;

    /* loaded from: classes.dex */
    private static final class b {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* renamed from: a  reason: collision with root package name */
            private final y f33013a;

            public a(y yVar) {
                this.f33013a = yVar;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType;
                boolean z10;
                overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                int i10 = 5;
                if (overrideNetworkType != 3 && overrideNetworkType != 4 && overrideNetworkType != 5) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                y yVar = this.f33013a;
                if (z10) {
                    i10 = 10;
                }
                yVar.k(i10);
            }
        }

        public static void a(Context context, y yVar) {
            Executor mainExecutor;
            try {
                TelephonyManager telephonyManager = (TelephonyManager) y4.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(yVar);
                mainExecutor = context.getMainExecutor();
                telephonyManager.registerTelephonyCallback(mainExecutor, aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                yVar.k(5);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(int i10);
    }

    /* loaded from: classes.dex */
    private final class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int g10 = y.g(context);
            if (q0.f32946a < 31 || g10 != 5) {
                y.this.k(g10);
            } else {
                b.a(context, y.this);
            }
        }
    }

    private y(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new d(), intentFilter);
    }

    public static synchronized y d(Context context) {
        y yVar;
        synchronized (y.class) {
            if (f33008e == null) {
                f33008e = new y(context);
            }
            yVar = f33008e;
        }
        return yVar;
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case C1415p9.C /* 19 */:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                if (q0.f32946a >= 29) {
                    return 9;
                }
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i10 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i10 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type != 1) {
                        if (type != 4 && type != 5) {
                            if (type == 6) {
                                return 5;
                            }
                            if (type != 9) {
                                return 8;
                            }
                            return 7;
                        }
                    } else {
                        return 2;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(c cVar) {
        cVar.a(f());
    }

    private void j() {
        Iterator it = this.f33010b.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference.get() == null) {
                this.f33010b.remove(weakReference);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i10) {
        synchronized (this.f33011c) {
            if (this.f33012d == i10) {
                return;
            }
            this.f33012d = i10;
            Iterator it = this.f33010b.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                c cVar = (c) weakReference.get();
                if (cVar != null) {
                    cVar.a(i10);
                } else {
                    this.f33010b.remove(weakReference);
                }
            }
        }
    }

    public int f() {
        int i10;
        synchronized (this.f33011c) {
            i10 = this.f33012d;
        }
        return i10;
    }

    public void i(final c cVar) {
        j();
        this.f33010b.add(new WeakReference(cVar));
        this.f33009a.post(new Runnable() { // from class: y4.x
            @Override // java.lang.Runnable
            public final void run() {
                y.this.h(cVar);
            }
        });
    }
}
