package com.journeyapps.barcodescanner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import h9.k;
import java.util.HashMap;
import java.util.List;
import xa.f;
import xa.g;
import xa.h;
import xa.i;
import xa.j;
import xa.r;
/* loaded from: classes.dex */
public class BarcodeView extends com.journeyapps.barcodescanner.a {
    private b B;
    private xa.a C;
    private i D;
    private g E;
    private Handler F;
    private final Handler.Callback G;

    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == k.f16936g) {
                xa.b bVar = (xa.b) message.obj;
                if (bVar != null && BarcodeView.this.C != null && BarcodeView.this.B != b.NONE) {
                    BarcodeView.this.C.a(bVar);
                    if (BarcodeView.this.B == b.SINGLE) {
                        BarcodeView.this.N();
                    }
                }
                return true;
            } else if (i10 == k.f16935f) {
                return true;
            } else {
                if (i10 == k.f16937h) {
                    List list = (List) message.obj;
                    if (BarcodeView.this.C != null && BarcodeView.this.B != b.NONE) {
                        BarcodeView.this.C.b(list);
                    }
                    return true;
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum b {
        NONE,
        SINGLE,
        CONTINUOUS
    }

    public BarcodeView(Context context) {
        super(context);
        this.B = b.NONE;
        this.C = null;
        this.G = new a();
        K();
    }

    private f G() {
        if (this.E == null) {
            this.E = H();
        }
        h hVar = new h();
        HashMap hashMap = new HashMap();
        hashMap.put(d9.e.NEED_RESULT_POINT_CALLBACK, hVar);
        f a10 = this.E.a(hashMap);
        hVar.b(a10);
        return a10;
    }

    private void K() {
        this.E = new j();
        this.F = new Handler(this.G);
    }

    private void L() {
        M();
        if (this.B != b.NONE && t()) {
            i iVar = new i(getCameraInstance(), G(), this.F);
            this.D = iVar;
            iVar.i(getPreviewFramingRect());
            this.D.k();
        }
    }

    private void M() {
        i iVar = this.D;
        if (iVar != null) {
            iVar.l();
            this.D = null;
        }
    }

    protected g H() {
        return new j();
    }

    public void I(xa.a aVar) {
        this.B = b.CONTINUOUS;
        this.C = aVar;
        L();
    }

    public void J(xa.a aVar) {
        this.B = b.SINGLE;
        this.C = aVar;
        L();
    }

    public void N() {
        this.B = b.NONE;
        this.C = null;
        M();
    }

    public g getDecoderFactory() {
        return this.E;
    }

    public void setDecoderFactory(g gVar) {
        r.a();
        this.E = gVar;
        i iVar = this.D;
        if (iVar != null) {
            iVar.j(G());
        }
    }

    @Override // com.journeyapps.barcodescanner.a
    public void u() {
        M();
        super.u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.journeyapps.barcodescanner.a
    public void x() {
        super.x();
        L();
    }

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B = b.NONE;
        this.C = null;
        this.G = new a();
        K();
    }
}
