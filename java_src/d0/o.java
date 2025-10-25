package d0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14358a;

    /* renamed from: b  reason: collision with root package name */
    private final p f14359b;

    /* renamed from: c  reason: collision with root package name */
    private final b f14360c;

    /* renamed from: d  reason: collision with root package name */
    private final a f14361d;

    /* renamed from: e  reason: collision with root package name */
    private VelocityTracker f14362e;

    /* renamed from: f  reason: collision with root package name */
    private float f14363f;

    /* renamed from: g  reason: collision with root package name */
    private int f14364g;

    /* renamed from: h  reason: collision with root package name */
    private int f14365h;

    /* renamed from: i  reason: collision with root package name */
    private int f14366i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f14367j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void a(Context context, int[] iArr, MotionEvent motionEvent, int i10);
    }

    public o(Context context, p pVar) {
        this(context, pVar, new b() { // from class: d0.m
            @Override // d0.o.b
            public final void a(Context context2, int[] iArr, MotionEvent motionEvent, int i10) {
                o.c(context2, iArr, motionEvent, i10);
            }
        }, new a() { // from class: d0.n
            @Override // d0.o.a
            public final float a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10) {
                float f10;
                f10 = o.f(velocityTracker, motionEvent, i10);
                return f10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, int[] iArr, MotionEvent motionEvent, int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        iArr[0] = s0.i(context, viewConfiguration, motionEvent.getDeviceId(), i10, motionEvent.getSource());
        iArr[1] = s0.h(context, viewConfiguration, motionEvent.getDeviceId(), i10, motionEvent.getSource());
    }

    private boolean d(MotionEvent motionEvent, int i10) {
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.f14365h == source && this.f14366i == deviceId && this.f14364g == i10) {
            return false;
        }
        this.f14360c.a(this.f14358a, this.f14367j, motionEvent, i10);
        this.f14365h = source;
        this.f14366i = deviceId;
        this.f14364g = i10;
        return true;
    }

    private float e(MotionEvent motionEvent, int i10) {
        if (this.f14362e == null) {
            this.f14362e = VelocityTracker.obtain();
        }
        return this.f14361d.a(this.f14362e, motionEvent, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float f(VelocityTracker velocityTracker, MotionEvent motionEvent, int i10) {
        m0.a(velocityTracker, motionEvent);
        m0.b(velocityTracker, 1000);
        return m0.d(velocityTracker, i10);
    }

    public void g(MotionEvent motionEvent, int i10) {
        boolean d10 = d(motionEvent, i10);
        if (this.f14367j[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f14362e;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f14362e = null;
                return;
            }
            return;
        }
        float e10 = e(motionEvent, i10) * this.f14359b.b();
        float signum = Math.signum(e10);
        float f10 = 0.0f;
        if (d10 || (signum != Math.signum(this.f14363f) && signum != 0.0f)) {
            this.f14359b.c();
        }
        float abs = Math.abs(e10);
        int[] iArr = this.f14367j;
        if (abs < iArr[0]) {
            return;
        }
        int i11 = iArr[1];
        float max = Math.max(-i11, Math.min(e10, i11));
        if (this.f14359b.a(max)) {
            f10 = max;
        }
        this.f14363f = f10;
    }

    o(Context context, p pVar, b bVar, a aVar) {
        this.f14364g = -1;
        this.f14365h = -1;
        this.f14366i = -1;
        this.f14367j = new int[]{Integer.MAX_VALUE, 0};
        this.f14358a = context;
        this.f14359b = pVar;
        this.f14360c = bVar;
        this.f14361d = aVar;
    }
}
