package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.journeyapps.barcodescanner.a;
import h9.j;
import h9.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinVersion;
import xa.p;
/* loaded from: classes.dex */
public class ViewfinderView extends View {

    /* renamed from: n  reason: collision with root package name */
    protected static final int[] f9385n = {0, 64, 128, 192, KotlinVersion.MAX_COMPONENT_VALUE, 192, 128, 64};

    /* renamed from: a  reason: collision with root package name */
    protected final Paint f9386a;

    /* renamed from: b  reason: collision with root package name */
    protected Bitmap f9387b;

    /* renamed from: c  reason: collision with root package name */
    protected int f9388c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f9389d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f9390e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f9391f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f9392g;

    /* renamed from: h  reason: collision with root package name */
    protected int f9393h;

    /* renamed from: i  reason: collision with root package name */
    protected List f9394i;

    /* renamed from: j  reason: collision with root package name */
    protected List f9395j;

    /* renamed from: k  reason: collision with root package name */
    protected com.journeyapps.barcodescanner.a f9396k;

    /* renamed from: l  reason: collision with root package name */
    protected Rect f9397l;

    /* renamed from: m  reason: collision with root package name */
    protected p f9398m;

    /* loaded from: classes.dex */
    class a implements a.f {
        a() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void a() {
            ViewfinderView.this.b();
            ViewfinderView.this.invalidate();
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void b(Exception exc) {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void c() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void d() {
        }

        @Override // com.journeyapps.barcodescanner.a.f
        public void e() {
        }
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9386a = new Paint(1);
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f16961n);
        this.f9388c = obtainStyledAttributes.getColor(o.f16966s, resources.getColor(j.f16929d));
        this.f9389d = obtainStyledAttributes.getColor(o.f16963p, resources.getColor(j.f16927b));
        this.f9390e = obtainStyledAttributes.getColor(o.f16964q, resources.getColor(j.f16928c));
        this.f9391f = obtainStyledAttributes.getColor(o.f16962o, resources.getColor(j.f16926a));
        this.f9392g = obtainStyledAttributes.getBoolean(o.f16965r, true);
        obtainStyledAttributes.recycle();
        this.f9393h = 0;
        this.f9394i = new ArrayList(20);
        this.f9395j = new ArrayList(20);
    }

    public void a(d9.p pVar) {
        if (this.f9394i.size() < 20) {
            this.f9394i.add(pVar);
        }
    }

    protected void b() {
        com.journeyapps.barcodescanner.a aVar = this.f9396k;
        if (aVar == null) {
            return;
        }
        Rect framingRect = aVar.getFramingRect();
        p previewSize = this.f9396k.getPreviewSize();
        if (framingRect != null && previewSize != null) {
            this.f9397l = framingRect;
            this.f9398m = previewSize;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        p pVar;
        int i10;
        b();
        Rect rect = this.f9397l;
        if (rect != null && (pVar = this.f9398m) != null) {
            int width = getWidth();
            int height = getHeight();
            Paint paint = this.f9386a;
            if (this.f9387b != null) {
                i10 = this.f9389d;
            } else {
                i10 = this.f9388c;
            }
            paint.setColor(i10);
            float f10 = width;
            canvas.drawRect(0.0f, 0.0f, f10, rect.top, this.f9386a);
            canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f9386a);
            canvas.drawRect(rect.right + 1, rect.top, f10, rect.bottom + 1, this.f9386a);
            canvas.drawRect(0.0f, rect.bottom + 1, f10, height, this.f9386a);
            if (this.f9387b != null) {
                this.f9386a.setAlpha(160);
                canvas.drawBitmap(this.f9387b, (Rect) null, rect, this.f9386a);
                return;
            }
            if (this.f9392g) {
                this.f9386a.setColor(this.f9390e);
                Paint paint2 = this.f9386a;
                int[] iArr = f9385n;
                paint2.setAlpha(iArr[this.f9393h]);
                this.f9393h = (this.f9393h + 1) % iArr.length;
                int height2 = (rect.height() / 2) + rect.top;
                canvas.drawRect(rect.left + 2, height2 - 1, rect.right - 1, height2 + 2, this.f9386a);
            }
            float width2 = getWidth() / pVar.f32649a;
            float height3 = getHeight() / pVar.f32650b;
            if (!this.f9395j.isEmpty()) {
                this.f9386a.setAlpha(80);
                this.f9386a.setColor(this.f9391f);
                for (d9.p pVar2 : this.f9395j) {
                    canvas.drawCircle((int) (pVar2.c() * width2), (int) (pVar2.d() * height3), 3.0f, this.f9386a);
                }
                this.f9395j.clear();
            }
            if (!this.f9394i.isEmpty()) {
                this.f9386a.setAlpha(160);
                this.f9386a.setColor(this.f9391f);
                for (d9.p pVar3 : this.f9394i) {
                    canvas.drawCircle((int) (pVar3.c() * width2), (int) (pVar3.d() * height3), 6.0f, this.f9386a);
                }
                List list = this.f9394i;
                List list2 = this.f9395j;
                this.f9394i = list2;
                this.f9395j = list;
                list2.clear();
            }
            postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
        }
    }

    public void setCameraPreview(com.journeyapps.barcodescanner.a aVar) {
        this.f9396k = aVar;
        aVar.i(new a());
    }

    public void setLaserVisibility(boolean z10) {
        this.f9392g = z10;
    }

    public void setMaskColor(int i10) {
        this.f9388c = i10;
    }
}
