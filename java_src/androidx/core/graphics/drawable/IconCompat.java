package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import c0.f;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k  reason: collision with root package name */
    static final PorterDuff.Mode f2026k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    public int f2027a;

    /* renamed from: b  reason: collision with root package name */
    Object f2028b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f2029c;

    /* renamed from: d  reason: collision with root package name */
    public Parcelable f2030d;

    /* renamed from: e  reason: collision with root package name */
    public int f2031e;

    /* renamed from: f  reason: collision with root package name */
    public int f2032f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f2033g;

    /* renamed from: h  reason: collision with root package name */
    PorterDuff.Mode f2034h;

    /* renamed from: i  reason: collision with root package name */
    public String f2035i;

    /* renamed from: j  reason: collision with root package name */
    public String f2036j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static IconCompat a(Object obj) {
            f.g(obj);
            int d10 = d(obj);
            if (d10 != 2) {
                if (d10 != 4) {
                    if (d10 != 6) {
                        IconCompat iconCompat = new IconCompat(-1);
                        iconCompat.f2028b = obj;
                        return iconCompat;
                    }
                    return IconCompat.d(e(obj));
                }
                return IconCompat.g(e(obj));
            }
            return IconCompat.k(null, c(obj), b(obj));
        }

        static int b(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.a(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon resource", e10);
                return 0;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon resource", e11);
                return 0;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon resource", e12);
                return 0;
            }
        }

        static String c(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.b(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon package", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon package", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon package", e12);
                return null;
            }
        }

        static int d(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e10);
                return -1;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e11);
                return -1;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e12);
                return -1;
            }
        }

        static Uri e(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.d(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon uri", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon uri", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon uri", e12);
                return null;
            }
        }

        static Icon f(IconCompat iconCompat, Context context) {
            Icon createWithBitmap;
            switch (iconCompat.f2027a) {
                case -1:
                    return (Icon) iconCompat.f2028b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    createWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f2028b);
                    break;
                case 2:
                    createWithBitmap = Icon.createWithResource(iconCompat.n(), iconCompat.f2031e);
                    break;
                case 3:
                    createWithBitmap = Icon.createWithData((byte[]) iconCompat.f2028b, iconCompat.f2031e, iconCompat.f2032f);
                    break;
                case 4:
                    createWithBitmap = Icon.createWithContentUri((String) iconCompat.f2028b);
                    break;
                case 5:
                    if (Build.VERSION.SDK_INT >= 26) {
                        createWithBitmap = b.a((Bitmap) iconCompat.f2028b);
                        break;
                    } else {
                        createWithBitmap = Icon.createWithBitmap(IconCompat.c((Bitmap) iconCompat.f2028b, false));
                        break;
                    }
                case 6:
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 30) {
                        createWithBitmap = d.a(iconCompat.p());
                        break;
                    } else if (context != null) {
                        InputStream q10 = iconCompat.q(context);
                        if (q10 != null) {
                            if (i10 >= 26) {
                                createWithBitmap = b.a(BitmapFactory.decodeStream(q10));
                                break;
                            } else {
                                createWithBitmap = Icon.createWithBitmap(IconCompat.c(BitmapFactory.decodeStream(q10), false));
                                break;
                            }
                        } else {
                            throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.p());
                        }
                    } else {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.p());
                    }
            }
            ColorStateList colorStateList = iconCompat.f2033g;
            if (colorStateList != null) {
                createWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f2034h;
            if (mode != IconCompat.f2026k) {
                createWithBitmap.setTintMode(mode);
            }
            return createWithBitmap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static Icon a(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {
        static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f2027a = -1;
        this.f2029c = null;
        this.f2030d = null;
        this.f2031e = 0;
        this.f2032f = 0;
        this.f2033g = null;
        this.f2034h = f2026k;
        this.f2035i = null;
    }

    public static IconCompat a(Bundle bundle) {
        int i10 = bundle.getInt("type");
        IconCompat iconCompat = new IconCompat(i10);
        iconCompat.f2031e = bundle.getInt("int1");
        iconCompat.f2032f = bundle.getInt("int2");
        iconCompat.f2036j = bundle.getString("string1");
        if (bundle.containsKey("tint_list")) {
            iconCompat.f2033g = (ColorStateList) bundle.getParcelable("tint_list");
        }
        if (bundle.containsKey("tint_mode")) {
            iconCompat.f2034h = PorterDuff.Mode.valueOf(bundle.getString("tint_mode"));
        }
        switch (i10) {
            case -1:
            case 1:
            case 5:
                iconCompat.f2028b = bundle.getParcelable("obj");
                break;
            case 0:
            default:
                Log.w("IconCompat", "Unknown type " + i10);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.f2028b = bundle.getString("obj");
                break;
            case 3:
                iconCompat.f2028b = bundle.getByteArray("obj");
                break;
        }
        return iconCompat;
    }

    public static IconCompat b(Icon icon) {
        return a.a(icon);
    }

    static Bitmap c(Bitmap bitmap, boolean z10) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f10 = min;
        float f11 = 0.5f * f10;
        float f12 = 0.9166667f * f11;
        if (z10) {
            float f13 = 0.010416667f * f10;
            paint.setColor(0);
            paint.setShadowLayer(f13, 0.0f, f10 * 0.020833334f, 1023410176);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.setShadowLayer(f13, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2.0f, (-(bitmap.getHeight() - min)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f11, f11, f12, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public static IconCompat d(Uri uri) {
        c0.b.c(uri);
        return e(uri.toString());
    }

    public static IconCompat e(String str) {
        c0.b.c(str);
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.f2028b = str;
        return iconCompat;
    }

    public static IconCompat f(Bitmap bitmap) {
        c0.b.c(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f2028b = bitmap;
        return iconCompat;
    }

    public static IconCompat g(Uri uri) {
        c0.b.c(uri);
        return h(uri.toString());
    }

    public static IconCompat h(String str) {
        c0.b.c(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.f2028b = str;
        return iconCompat;
    }

    public static IconCompat i(byte[] bArr, int i10, int i11) {
        c0.b.c(bArr);
        IconCompat iconCompat = new IconCompat(3);
        iconCompat.f2028b = bArr;
        iconCompat.f2031e = i10;
        iconCompat.f2032f = i11;
        return iconCompat;
    }

    public static IconCompat j(Context context, int i10) {
        c0.b.c(context);
        return k(context.getResources(), context.getPackageName(), i10);
    }

    public static IconCompat k(Resources resources, String str, int i10) {
        c0.b.c(str);
        if (i10 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f2031e = i10;
            if (resources != null) {
                try {
                    iconCompat.f2028b = resources.getResourceName(i10);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f2028b = str;
            }
            iconCompat.f2036j = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    private static String w(int i10) {
        switch (i10) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public Bitmap l() {
        int i10 = this.f2027a;
        if (i10 == -1) {
            Object obj = this.f2028b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        } else if (i10 == 1) {
            return (Bitmap) this.f2028b;
        } else {
            if (i10 == 5) {
                return c((Bitmap) this.f2028b, true);
            }
            throw new IllegalStateException("called getBitmap() on " + this);
        }
    }

    public int m() {
        int i10 = this.f2027a;
        if (i10 == -1) {
            return a.b(this.f2028b);
        }
        if (i10 == 2) {
            return this.f2031e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String n() {
        int i10 = this.f2027a;
        if (i10 == -1) {
            return a.c(this.f2028b);
        }
        if (i10 == 2) {
            String str = this.f2036j;
            if (str != null && !TextUtils.isEmpty(str)) {
                return this.f2036j;
            }
            return ((String) this.f2028b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int o() {
        int i10 = this.f2027a;
        if (i10 == -1) {
            return a.d(this.f2028b);
        }
        return i10;
    }

    public Uri p() {
        int i10 = this.f2027a;
        if (i10 == -1) {
            return a.e(this.f2028b);
        }
        if (i10 != 4 && i10 != 6) {
            throw new IllegalStateException("called getUri() on " + this);
        }
        return Uri.parse((String) this.f2028b);
    }

    public InputStream q(Context context) {
        Uri p10 = p();
        String scheme = p10.getScheme();
        if (!"content".equals(scheme) && !Constants.FILE.equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.f2028b));
            } catch (FileNotFoundException e10) {
                Log.w("IconCompat", "Unable to load image from path: " + p10, e10);
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(p10);
        } catch (Exception e11) {
            Log.w("IconCompat", "Unable to load image from URI: " + p10, e11);
            return null;
        }
    }

    public void r() {
        this.f2034h = PorterDuff.Mode.valueOf(this.f2035i);
        switch (this.f2027a) {
            case -1:
                Parcelable parcelable = this.f2030d;
                if (parcelable != null) {
                    this.f2028b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f2030d;
                if (parcelable2 != null) {
                    this.f2028b = parcelable2;
                    return;
                }
                byte[] bArr = this.f2029c;
                this.f2028b = bArr;
                this.f2027a = 3;
                this.f2031e = 0;
                this.f2032f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f2029c, Charset.forName("UTF-16"));
                this.f2028b = str;
                if (this.f2027a == 2 && this.f2036j == null) {
                    this.f2036j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f2028b = this.f2029c;
                return;
        }
    }

    public void s(boolean z10) {
        this.f2035i = this.f2034h.name();
        switch (this.f2027a) {
            case -1:
                if (!z10) {
                    this.f2030d = (Parcelable) this.f2028b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z10) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ((Bitmap) this.f2028b).compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f2029c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f2030d = (Parcelable) this.f2028b;
                return;
            case 2:
                this.f2029c = ((String) this.f2028b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f2029c = (byte[]) this.f2028b;
                return;
            case 4:
            case 6:
                this.f2029c = this.f2028b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    public Bundle t() {
        Bundle bundle = new Bundle();
        switch (this.f2027a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f2028b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f2028b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f2028b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f2028b);
                break;
        }
        bundle.putInt("type", this.f2027a);
        bundle.putInt("int1", this.f2031e);
        bundle.putInt("int2", this.f2032f);
        bundle.putString("string1", this.f2036j);
        ColorStateList colorStateList = this.f2033g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f2034h;
        if (mode != f2026k) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    public String toString() {
        if (this.f2027a == -1) {
            return String.valueOf(this.f2028b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        sb2.append(w(this.f2027a));
        switch (this.f2027a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f2028b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f2028b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f2036j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(m())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f2031e);
                if (this.f2032f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f2032f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f2028b);
                break;
        }
        if (this.f2033g != null) {
            sb2.append(" tint=");
            sb2.append(this.f2033g);
        }
        if (this.f2034h != f2026k) {
            sb2.append(" mode=");
            sb2.append(this.f2034h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public Icon u() {
        return v(null);
    }

    public Icon v(Context context) {
        return a.f(this, context);
    }

    IconCompat(int i10) {
        this.f2029c = null;
        this.f2030d = null;
        this.f2031e = 0;
        this.f2032f = 0;
        this.f2033g = null;
        this.f2034h = f2026k;
        this.f2035i = null;
        this.f2027a = i10;
    }
}
