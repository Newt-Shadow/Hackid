package qa;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.Display;
import android.view.WindowManager;
import fa.o0;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
/* loaded from: classes.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static final IntentFilter f28638g = new IntentFilter("android.intent.action.CONFIGURATION_CHANGED");

    /* renamed from: a  reason: collision with root package name */
    private final Activity f28639a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f28640b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28641c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28642d;

    /* renamed from: e  reason: collision with root package name */
    private PlatformChannel.DeviceOrientation f28643e;

    /* renamed from: f  reason: collision with root package name */
    private BroadcastReceiver f28644f;

    /* renamed from: qa.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0290a extends BroadcastReceiver {
        C0290a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            a.this.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f28646a;

        static {
            int[] iArr = new int[PlatformChannel.DeviceOrientation.values().length];
            f28646a = iArr;
            try {
                iArr[PlatformChannel.DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28646a[PlatformChannel.DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28646a[PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28646a[PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private a(Activity activity, o0 o0Var, boolean z10, int i10) {
        this.f28639a = activity;
        this.f28640b = o0Var;
        this.f28641c = z10;
        this.f28642d = i10;
    }

    public static a a(Activity activity, o0 o0Var, boolean z10, int i10) {
        return new a(activity, o0Var, z10, i10);
    }

    static void g(PlatformChannel.DeviceOrientation deviceOrientation, PlatformChannel.DeviceOrientation deviceOrientation2, o0 o0Var) {
        if (!deviceOrientation.equals(deviceOrientation2)) {
            o0Var.m(deviceOrientation);
        }
    }

    Display b() {
        return ((WindowManager) this.f28639a.getSystemService("window")).getDefaultDisplay();
    }

    public PlatformChannel.DeviceOrientation c() {
        return this.f28643e;
    }

    PlatformChannel.DeviceOrientation d() {
        int rotation = b().getRotation();
        int i10 = this.f28639a.getResources().getConfiguration().orientation;
        if (i10 != 1) {
            if (i10 != 2) {
                return PlatformChannel.DeviceOrientation.PORTRAIT_UP;
            }
            if (rotation != 0 && rotation != 1) {
                return PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT;
            }
            return PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT;
        } else if (rotation != 0 && rotation != 1) {
            return PlatformChannel.DeviceOrientation.PORTRAIT_DOWN;
        } else {
            return PlatformChannel.DeviceOrientation.PORTRAIT_UP;
        }
    }

    public int e() {
        return f(this.f28643e);
    }

    public int f(PlatformChannel.DeviceOrientation deviceOrientation) {
        if (deviceOrientation == null) {
            deviceOrientation = d();
        }
        int i10 = b.f28646a[deviceOrientation.ordinal()];
        int i11 = 0;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        i11 = 90;
                    }
                } else {
                    i11 = 270;
                }
            } else {
                i11 = 180;
            }
        }
        if (this.f28641c) {
            i11 *= -1;
        }
        return ((i11 + this.f28642d) + 360) % 360;
    }

    void h() {
        PlatformChannel.DeviceOrientation d10 = d();
        g(d10, this.f28643e, this.f28640b);
        this.f28643e = d10;
    }

    public void i() {
        if (this.f28644f != null) {
            return;
        }
        C0290a c0290a = new C0290a();
        this.f28644f = c0290a;
        this.f28639a.registerReceiver(c0290a, f28638g);
        this.f28644f.onReceive(this.f28639a, null);
    }

    public void j() {
        BroadcastReceiver broadcastReceiver = this.f28644f;
        if (broadcastReceiver == null) {
            return;
        }
        this.f28639a.unregisterReceiver(broadcastReceiver);
        this.f28644f = null;
    }
}
