package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import d9.p;
import h9.f;
import h9.g;
import h9.k;
import h9.l;
import h9.o;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import xa.j;
import ya.i;
/* loaded from: classes.dex */
public class DecoratedBarcodeView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private BarcodeView f9380a;

    /* renamed from: b  reason: collision with root package name */
    private ViewfinderView f9381b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f9382c;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    private class b implements xa.a {

        /* renamed from: a  reason: collision with root package name */
        private xa.a f9383a;

        public b(xa.a aVar) {
            this.f9383a = aVar;
        }

        @Override // xa.a
        public void a(xa.b bVar) {
            this.f9383a.a(bVar);
        }

        @Override // xa.a
        public void b(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DecoratedBarcodeView.this.f9381b.a((p) it.next());
            }
            this.f9383a.b(list);
        }
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(attributeSet);
    }

    private void c(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f16967t);
        int resourceId = obtainStyledAttributes.getResourceId(o.f16968u, l.f16942a);
        obtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(k.f16931b);
        this.f9380a = barcodeView;
        if (barcodeView != null) {
            barcodeView.q(attributeSet);
            ViewfinderView viewfinderView = (ViewfinderView) findViewById(k.f16941l);
            this.f9381b = viewfinderView;
            if (viewfinderView != null) {
                viewfinderView.setCameraPreview(this.f9380a);
                this.f9382c = (TextView) findViewById(k.f16940k);
                return;
            }
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
        }
        throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
    }

    public void b(xa.a aVar) {
        this.f9380a.J(new b(aVar));
    }

    public void d(Intent intent) {
        int intExtra;
        Set a10 = f.a(intent);
        Map a11 = g.a(intent);
        i iVar = new i();
        if (intent.hasExtra("SCAN_CAMERA_ID") && (intExtra = intent.getIntExtra("SCAN_CAMERA_ID", -1)) >= 0) {
            iVar.i(intExtra);
        }
        if (intent.hasExtra("TORCH_ENABLED") && intent.getBooleanExtra("TORCH_ENABLED", false)) {
            i();
        }
        String stringExtra = intent.getStringExtra("PROMPT_MESSAGE");
        if (stringExtra != null) {
            setStatusText(stringExtra);
        }
        int intExtra2 = intent.getIntExtra("SCAN_TYPE", 0);
        String stringExtra2 = intent.getStringExtra("CHARACTER_SET");
        new d9.i().f(a11);
        this.f9380a.setCameraSettings(iVar);
        this.f9380a.setDecoderFactory(new j(a10, a11, stringExtra2, intExtra2));
    }

    public void e() {
        this.f9380a.u();
    }

    public void f() {
        this.f9380a.v();
    }

    public void g() {
        this.f9380a.y();
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(k.f16931b);
    }

    public i getCameraSettings() {
        return this.f9380a.getCameraSettings();
    }

    public xa.g getDecoderFactory() {
        return this.f9380a.getDecoderFactory();
    }

    public TextView getStatusView() {
        return this.f9382c;
    }

    public ViewfinderView getViewFinder() {
        return this.f9381b;
    }

    public void h() {
        this.f9380a.setTorch(false);
    }

    public void i() {
        this.f9380a.setTorch(true);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 24) {
            if (i10 != 25) {
                if (i10 == 27 || i10 == 80) {
                    return true;
                }
                return super.onKeyDown(i10, keyEvent);
            }
            h();
            return true;
        }
        i();
        return true;
    }

    public void setCameraSettings(i iVar) {
        this.f9380a.setCameraSettings(iVar);
    }

    public void setDecoderFactory(xa.g gVar) {
        this.f9380a.setDecoderFactory(gVar);
    }

    public void setStatusText(String str) {
        TextView textView = this.f9382c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(a aVar) {
    }
}
