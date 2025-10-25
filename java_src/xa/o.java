package xa;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private int f32644a;

    /* renamed from: b  reason: collision with root package name */
    private WindowManager f32645b;

    /* renamed from: c  reason: collision with root package name */
    private OrientationEventListener f32646c;

    /* renamed from: d  reason: collision with root package name */
    private n f32647d;

    /* loaded from: classes.dex */
    class a extends OrientationEventListener {
        a(Context context, int i10) {
            super(context, i10);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i10) {
            int rotation;
            WindowManager windowManager = o.this.f32645b;
            n nVar = o.this.f32647d;
            if (o.this.f32645b != null && nVar != null && (rotation = windowManager.getDefaultDisplay().getRotation()) != o.this.f32644a) {
                o.this.f32644a = rotation;
                nVar.a(rotation);
            }
        }
    }

    public void e(Context context, n nVar) {
        f();
        Context applicationContext = context.getApplicationContext();
        this.f32647d = nVar;
        this.f32645b = (WindowManager) applicationContext.getSystemService("window");
        a aVar = new a(applicationContext, 3);
        this.f32646c = aVar;
        aVar.enable();
        this.f32644a = this.f32645b.getDefaultDisplay().getRotation();
    }

    public void f() {
        OrientationEventListener orientationEventListener = this.f32646c;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        this.f32646c = null;
        this.f32645b = null;
        this.f32647d = null;
    }
}
