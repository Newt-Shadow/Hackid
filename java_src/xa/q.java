package xa;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private m f32651a;

    /* renamed from: b  reason: collision with root package name */
    private int f32652b;

    /* renamed from: c  reason: collision with root package name */
    private int f32653c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f32654d;

    /* renamed from: e  reason: collision with root package name */
    private int f32655e = 1;

    /* renamed from: f  reason: collision with root package name */
    private boolean f32656f;

    public q(byte[] bArr, int i10, int i11, int i12, int i13) {
        this.f32651a = new m(bArr, i10, i11);
        this.f32653c = i13;
        this.f32652b = i12;
        if (i10 * i11 <= bArr.length) {
            return;
        }
        throw new IllegalArgumentException("Image data does not match the resolution. " + i10 + "x" + i11 + " > " + bArr.length);
    }

    public d9.k a() {
        m a10 = this.f32651a.h(this.f32653c).a(this.f32654d, this.f32655e);
        return new d9.k(a10.b(), a10.d(), a10.c(), 0, 0, a10.d(), a10.c(), false);
    }

    public Bitmap b(Rect rect, int i10) {
        if (rect == null) {
            rect = new Rect(0, 0, this.f32651a.d(), this.f32651a.c());
        } else if (c()) {
            rect = new Rect(rect.top, rect.left, rect.bottom, rect.right);
        }
        YuvImage yuvImage = new YuvImage(this.f32651a.b(), this.f32652b, this.f32651a.d(), this.f32651a.c(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i10;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        if (this.f32653c != 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(this.f32653c);
            return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, false);
        }
        return decodeByteArray;
    }

    public boolean c() {
        if (this.f32653c % 180 != 0) {
            return true;
        }
        return false;
    }

    public void d(Rect rect) {
        this.f32654d = rect;
    }

    public void e(boolean z10) {
        this.f32656f = z10;
    }

    public d9.p f(d9.p pVar) {
        float c10 = (pVar.c() * this.f32655e) + this.f32654d.left;
        float d10 = (pVar.d() * this.f32655e) + this.f32654d.top;
        if (this.f32656f) {
            c10 = this.f32651a.d() - c10;
        }
        return new d9.p(c10, d10);
    }
}
