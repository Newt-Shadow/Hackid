package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import h9.k;
import h9.l;
/* loaded from: classes.dex */
public class CaptureActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private e f9378a;

    /* renamed from: b  reason: collision with root package name */
    private DecoratedBarcodeView f9379b;

    protected DecoratedBarcodeView a() {
        setContentView(l.f16943b);
        return (DecoratedBarcodeView) findViewById(k.f16930a);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f9379b = a();
        e eVar = new e(this, this.f9379b);
        this.f9378a = eVar;
        eVar.p(getIntent(), bundle);
        this.f9378a.l();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f9378a.u();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!this.f9379b.onKeyDown(i10, keyEvent) && !super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f9378a.v();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.f9378a.w(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f9378a.x();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f9378a.y(bundle);
    }
}
