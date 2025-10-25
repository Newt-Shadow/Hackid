package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.journeyapps.barcodescanner.a;
import h9.k;
import java.util.ArrayList;
import java.util.List;
import xa.n;
import xa.o;
import xa.p;
import xa.r;
import ya.g;
import ya.i;
import ya.j;
import ya.l;
import ya.m;
import ya.q;
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {
    private static final String A = "a";

    /* renamed from: a  reason: collision with root package name */
    private g f9400a;

    /* renamed from: b  reason: collision with root package name */
    private WindowManager f9401b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f9402c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9403d;

    /* renamed from: e  reason: collision with root package name */
    private SurfaceView f9404e;

    /* renamed from: f  reason: collision with root package name */
    private TextureView f9405f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f9406g;

    /* renamed from: h  reason: collision with root package name */
    private o f9407h;

    /* renamed from: i  reason: collision with root package name */
    private int f9408i;

    /* renamed from: j  reason: collision with root package name */
    private List f9409j;

    /* renamed from: k  reason: collision with root package name */
    private m f9410k;

    /* renamed from: l  reason: collision with root package name */
    private i f9411l;

    /* renamed from: m  reason: collision with root package name */
    private p f9412m;

    /* renamed from: n  reason: collision with root package name */
    private p f9413n;

    /* renamed from: o  reason: collision with root package name */
    private Rect f9414o;

    /* renamed from: p  reason: collision with root package name */
    private p f9415p;

    /* renamed from: q  reason: collision with root package name */
    private Rect f9416q;

    /* renamed from: r  reason: collision with root package name */
    private Rect f9417r;

    /* renamed from: s  reason: collision with root package name */
    private p f9418s;

    /* renamed from: t  reason: collision with root package name */
    private double f9419t;

    /* renamed from: u  reason: collision with root package name */
    private q f9420u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f9421v;

    /* renamed from: w  reason: collision with root package name */
    private final SurfaceHolder.Callback f9422w;

    /* renamed from: x  reason: collision with root package name */
    private final Handler.Callback f9423x;

    /* renamed from: y  reason: collision with root package name */
    private n f9424y;

    /* renamed from: z  reason: collision with root package name */
    private final f f9425z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.journeyapps.barcodescanner.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class TextureView$SurfaceTextureListenerC0116a implements TextureView.SurfaceTextureListener {
        TextureView$SurfaceTextureListenerC0116a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            onSurfaceTextureSizeChanged(surfaceTexture, i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            a.this.f9415p = new p(i10, i11);
            a.this.C();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    /* loaded from: classes.dex */
    class b implements SurfaceHolder.Callback {
        b() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            if (surfaceHolder == null) {
                Log.e(a.A, "*** WARNING *** surfaceChanged() gave us a null surface!");
                return;
            }
            a.this.f9415p = new p(i11, i12);
            a.this.C();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            a.this.f9415p = null;
        }
    }

    /* loaded from: classes.dex */
    class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == k.f16939j) {
                a.this.w((p) message.obj);
                return true;
            } else if (i10 == k.f16933d) {
                Exception exc = (Exception) message.obj;
                if (a.this.r()) {
                    a.this.u();
                    a.this.f9425z.b(exc);
                    return false;
                }
                return false;
            } else if (i10 == k.f16932c) {
                a.this.f9425z.d();
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements n {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            a.this.z();
        }

        @Override // xa.n
        public void a(int i10) {
            a.this.f9402c.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.d.this.c();
                }
            }, 250L);
        }
    }

    /* loaded from: classes.dex */
    class e implements f {
        e() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void a() {
            for (f fVar : a.this.f9409j) {
                fVar.a();
            }
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void b(Exception exc) {
            for (f fVar : a.this.f9409j) {
                fVar.b(exc);
            }
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void c() {
            for (f fVar : a.this.f9409j) {
                fVar.c();
            }
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void d() {
            for (f fVar : a.this.f9409j) {
                fVar.d();
            }
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void e() {
            for (f fVar : a.this.f9409j) {
                fVar.e();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface f {
        void a();

        void b(Exception exc);

        void c();

        void d();

        void e();
    }

    public a(Context context) {
        super(context);
        this.f9403d = false;
        this.f9406g = false;
        this.f9408i = -1;
        this.f9409j = new ArrayList();
        this.f9411l = new i();
        this.f9416q = null;
        this.f9417r = null;
        this.f9418s = null;
        this.f9419t = 0.1d;
        this.f9420u = null;
        this.f9421v = false;
        this.f9422w = new b();
        this.f9423x = new c();
        this.f9424y = new d();
        this.f9425z = new e();
        p(context, null, 0, 0);
    }

    private void A() {
        if (this.f9403d) {
            TextureView textureView = new TextureView(getContext());
            this.f9405f = textureView;
            textureView.setSurfaceTextureListener(D());
            addView(this.f9405f);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f9404e = surfaceView;
        surfaceView.getHolder().addCallback(this.f9422w);
        addView(this.f9404e);
    }

    private void B(j jVar) {
        if (!this.f9406g && this.f9400a != null) {
            Log.i(A, "Starting preview");
            this.f9400a.z(jVar);
            this.f9400a.B();
            this.f9406g = true;
            x();
            this.f9425z.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        Rect rect;
        p pVar = this.f9415p;
        if (pVar != null && this.f9413n != null && (rect = this.f9414o) != null) {
            if (this.f9404e != null && pVar.equals(new p(rect.width(), this.f9414o.height()))) {
                B(new j(this.f9404e.getHolder()));
                return;
            }
            TextureView textureView = this.f9405f;
            if (textureView != null && textureView.getSurfaceTexture() != null) {
                if (this.f9413n != null) {
                    this.f9405f.setTransform(l(new p(this.f9405f.getWidth(), this.f9405f.getHeight()), this.f9413n));
                }
                B(new j(this.f9405f.getSurfaceTexture()));
            }
        }
    }

    private TextureView.SurfaceTextureListener D() {
        return new TextureView$SurfaceTextureListenerC0116a();
    }

    private int getDisplayRotation() {
        return this.f9401b.getDefaultDisplay().getRotation();
    }

    private void j() {
        p pVar;
        m mVar;
        p pVar2 = this.f9412m;
        if (pVar2 != null && (pVar = this.f9413n) != null && (mVar = this.f9410k) != null) {
            int i10 = pVar.f32649a;
            int i11 = pVar.f32650b;
            int i12 = pVar2.f32649a;
            int i13 = pVar2.f32650b;
            Rect d10 = mVar.d(pVar);
            if (d10.width() > 0 && d10.height() > 0) {
                this.f9414o = d10;
                this.f9416q = k(new Rect(0, 0, i12, i13), this.f9414o);
                Rect rect = new Rect(this.f9416q);
                Rect rect2 = this.f9414o;
                rect.offset(-rect2.left, -rect2.top);
                Rect rect3 = new Rect((rect.left * i10) / this.f9414o.width(), (rect.top * i11) / this.f9414o.height(), (rect.right * i10) / this.f9414o.width(), (rect.bottom * i11) / this.f9414o.height());
                this.f9417r = rect3;
                if (rect3.width() > 0 && this.f9417r.height() > 0) {
                    this.f9425z.a();
                    return;
                }
                this.f9417r = null;
                this.f9416q = null;
                Log.w(A, "Preview frame is too small");
                return;
            }
            return;
        }
        this.f9417r = null;
        this.f9416q = null;
        this.f9414o = null;
        throw new IllegalStateException("containerSize or previewSize is not set yet");
    }

    private void m(p pVar) {
        this.f9412m = pVar;
        g gVar = this.f9400a;
        if (gVar != null && gVar.n() == null) {
            m mVar = new m(getDisplayRotation(), pVar);
            this.f9410k = mVar;
            mVar.e(getPreviewScalingStrategy());
            this.f9400a.x(this.f9410k);
            this.f9400a.m();
            boolean z10 = this.f9421v;
            if (z10) {
                this.f9400a.A(z10);
            }
        }
    }

    private void o() {
        if (this.f9400a != null) {
            Log.w(A, "initCamera called twice");
            return;
        }
        g n10 = n();
        this.f9400a = n10;
        n10.y(this.f9402c);
        this.f9400a.u();
        this.f9408i = getDisplayRotation();
    }

    private void p(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (getBackground() == null) {
            setBackgroundColor(-16777216);
        }
        q(attributeSet);
        this.f9401b = (WindowManager) context.getSystemService("window");
        this.f9402c = new Handler(this.f9423x);
        this.f9407h = new o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(p pVar) {
        this.f9413n = pVar;
        if (this.f9412m != null) {
            j();
            requestLayout();
            C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (r() && getDisplayRotation() != this.f9408i) {
            u();
            y();
        }
    }

    public g getCameraInstance() {
        return this.f9400a;
    }

    public i getCameraSettings() {
        return this.f9411l;
    }

    public Rect getFramingRect() {
        return this.f9416q;
    }

    public p getFramingRectSize() {
        return this.f9418s;
    }

    public double getMarginFraction() {
        return this.f9419t;
    }

    public Rect getPreviewFramingRect() {
        return this.f9417r;
    }

    public q getPreviewScalingStrategy() {
        q qVar = this.f9420u;
        if (qVar != null) {
            return qVar;
        }
        if (this.f9405f != null) {
            return new l();
        }
        return new ya.n();
    }

    public p getPreviewSize() {
        return this.f9413n;
    }

    public void i(f fVar) {
        this.f9409j.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Rect k(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        if (this.f9418s != null) {
            rect3.inset(Math.max(0, (rect3.width() - this.f9418s.f32649a) / 2), Math.max(0, (rect3.height() - this.f9418s.f32650b) / 2));
            return rect3;
        }
        int min = (int) Math.min(rect3.width() * this.f9419t, rect3.height() * this.f9419t);
        rect3.inset(min, min);
        if (rect3.height() > rect3.width()) {
            rect3.inset(0, (rect3.height() - rect3.width()) / 2);
        }
        return rect3;
    }

    protected Matrix l(p pVar, p pVar2) {
        float f10;
        float f11 = pVar.f32649a / pVar.f32650b;
        float f12 = pVar2.f32649a / pVar2.f32650b;
        float f13 = 1.0f;
        if (f11 < f12) {
            float f14 = f12 / f11;
            f10 = 1.0f;
            f13 = f14;
        } else {
            f10 = f11 / f12;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f13, f10);
        int i10 = pVar.f32649a;
        int i11 = pVar.f32650b;
        matrix.postTranslate((i10 - (i10 * f13)) / 2.0f, (i11 - (i11 * f10)) / 2.0f);
        return matrix;
    }

    protected g n() {
        g gVar = new g(getContext());
        gVar.w(this.f9411l);
        return gVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        A();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        m(new p(i12 - i10, i13 - i11));
        SurfaceView surfaceView = this.f9404e;
        if (surfaceView != null) {
            Rect rect = this.f9414o;
            if (rect == null) {
                surfaceView.layout(0, 0, getWidth(), getHeight());
                return;
            } else {
                surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
                return;
            }
        }
        TextureView textureView = this.f9405f;
        if (textureView != null) {
            textureView.layout(0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", onSaveInstanceState);
        bundle.putBoolean("torch", this.f9421v);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h9.o.f16956i);
        int dimension = (int) obtainStyledAttributes.getDimension(h9.o.f16958k, -1.0f);
        int dimension2 = (int) obtainStyledAttributes.getDimension(h9.o.f16957j, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.f9418s = new p(dimension, dimension2);
        }
        this.f9403d = obtainStyledAttributes.getBoolean(h9.o.f16960m, true);
        int integer = obtainStyledAttributes.getInteger(h9.o.f16959l, -1);
        if (integer == 1) {
            this.f9420u = new l();
        } else if (integer == 2) {
            this.f9420u = new ya.n();
        } else if (integer == 3) {
            this.f9420u = new ya.o();
        }
        obtainStyledAttributes.recycle();
    }

    protected boolean r() {
        if (this.f9400a != null) {
            return true;
        }
        return false;
    }

    public boolean s() {
        g gVar = this.f9400a;
        if (gVar != null && !gVar.p()) {
            return false;
        }
        return true;
    }

    public void setCameraSettings(i iVar) {
        this.f9411l = iVar;
    }

    public void setFramingRectSize(p pVar) {
        this.f9418s = pVar;
    }

    public void setMarginFraction(double d10) {
        if (d10 < 0.5d) {
            this.f9419t = d10;
            return;
        }
        throw new IllegalArgumentException("The margin fraction must be less than 0.5");
    }

    public void setPreviewScalingStrategy(q qVar) {
        this.f9420u = qVar;
    }

    public void setTorch(boolean z10) {
        this.f9421v = z10;
        g gVar = this.f9400a;
        if (gVar != null) {
            gVar.A(z10);
        }
    }

    public void setUseTextureView(boolean z10) {
        this.f9403d = z10;
    }

    public boolean t() {
        return this.f9406g;
    }

    public void u() {
        TextureView textureView;
        SurfaceView surfaceView;
        r.a();
        Log.d(A, "pause()");
        this.f9408i = -1;
        g gVar = this.f9400a;
        if (gVar != null) {
            gVar.l();
            this.f9400a = null;
            this.f9406g = false;
        } else {
            this.f9402c.sendEmptyMessage(k.f16932c);
        }
        if (this.f9415p == null && (surfaceView = this.f9404e) != null) {
            surfaceView.getHolder().removeCallback(this.f9422w);
        }
        if (this.f9415p == null && (textureView = this.f9405f) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f9412m = null;
        this.f9413n = null;
        this.f9417r = null;
        this.f9407h.f();
        this.f9425z.c();
    }

    public void v() {
        g cameraInstance = getCameraInstance();
        u();
        long nanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.p() && System.nanoTime() - nanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
    }

    public void y() {
        r.a();
        Log.d(A, "resume()");
        o();
        if (this.f9415p != null) {
            C();
        } else {
            SurfaceView surfaceView = this.f9404e;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f9422w);
            } else {
                TextureView textureView = this.f9405f;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        D().onSurfaceTextureAvailable(this.f9405f.getSurfaceTexture(), this.f9405f.getWidth(), this.f9405f.getHeight());
                    } else {
                        this.f9405f.setSurfaceTextureListener(D());
                    }
                }
            }
        }
        requestLayout();
        this.f9407h.e(getContext(), this.f9424y);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9403d = false;
        this.f9406g = false;
        this.f9408i = -1;
        this.f9409j = new ArrayList();
        this.f9411l = new i();
        this.f9416q = null;
        this.f9417r = null;
        this.f9418s = null;
        this.f9419t = 0.1d;
        this.f9420u = null;
        this.f9421v = false;
        this.f9422w = new b();
        this.f9423x = new c();
        this.f9424y = new d();
        this.f9425z = new e();
        p(context, attributeSet, 0, 0);
    }
}
