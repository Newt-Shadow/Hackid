package h9;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
/* loaded from: classes.dex */
public final class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private ya.h f16897a;

    /* renamed from: b  reason: collision with root package name */
    private ya.i f16898b;

    /* renamed from: c  reason: collision with root package name */
    private Sensor f16899c;

    /* renamed from: d  reason: collision with root package name */
    private Context f16900d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f16901e = new Handler();

    public b(Context context, ya.h hVar, ya.i iVar) {
        this.f16900d = context;
        this.f16897a = hVar;
        this.f16898b = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z10) {
        this.f16897a.t(z10);
    }

    private void c(final boolean z10) {
        this.f16901e.post(new Runnable() { // from class: h9.a
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b(z10);
            }
        });
    }

    public void d() {
        if (this.f16898b.d()) {
            SensorManager sensorManager = (SensorManager) this.f16900d.getSystemService("sensor");
            Sensor defaultSensor = sensorManager.getDefaultSensor(5);
            this.f16899c = defaultSensor;
            if (defaultSensor != null) {
                sensorManager.registerListener(this, defaultSensor, 3);
            }
        }
    }

    public void e() {
        if (this.f16899c != null) {
            ((SensorManager) this.f16900d.getSystemService("sensor")).unregisterListener(this);
            this.f16899c = null;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f10 = sensorEvent.values[0];
        if (this.f16897a != null) {
            if (f10 <= 45.0f) {
                c(true);
            } else if (f10 >= 450.0f) {
                c(false);
            }
        }
    }
}
