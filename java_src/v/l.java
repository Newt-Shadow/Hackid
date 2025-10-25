package v;

import a0.k;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.List;
import u.d;
/* loaded from: classes.dex */
public class l extends m {
    private Font i(FontFamily fontFamily, int i10) {
        int i11;
        int i12;
        if ((i10 & 1) != 0) {
            i11 = 700;
        } else {
            i11 = 400;
        }
        if ((i10 & 2) != 0) {
            i12 = 1;
        } else {
            i12 = 0;
        }
        FontStyle fontStyle = new FontStyle(i11, i12);
        Font font = fontFamily.getFont(0);
        int k10 = k(fontStyle, font.getStyle());
        for (int i13 = 1; i13 < fontFamily.getSize(); i13++) {
            Font font2 = fontFamily.getFont(i13);
            int k11 = k(fontStyle, font2.getStyle());
            if (k11 < k10) {
                font = font2;
                k10 = k11;
            }
        }
        return font;
    }

    private static FontFamily j(CancellationSignal cancellationSignal, k.b[] bVarArr, ContentResolver contentResolver) {
        ParcelFileDescriptor openFileDescriptor;
        int i10;
        FontFamily.Builder builder = null;
        for (k.b bVar : bVarArr) {
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(bVar.d(), "r", cancellationSignal);
            } catch (IOException e10) {
                Log.w("TypefaceCompatApi29Impl", "Font load failed", e10);
            }
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                }
            } else {
                Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(bVar.e());
                if (bVar.f()) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                Font build = weight.setSlant(i10).setTtcIndex(bVar.c()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            }
            openFileDescriptor.close();
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    private static int k(FontStyle fontStyle, FontStyle fontStyle2) {
        int i10;
        int abs = Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100;
        if (fontStyle.getSlant() == fontStyle2.getSlant()) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        return abs + i10;
    }

    @Override // v.m
    public Typeface a(Context context, d.c cVar, Resources resources, int i10) {
        d.C0338d[] a10;
        int i11;
        try {
            FontFamily.Builder builder = null;
            for (d.C0338d c0338d : cVar.a()) {
                try {
                    Font.Builder weight = new Font.Builder(resources, c0338d.b()).setWeight(c0338d.e());
                    if (c0338d.f()) {
                        i11 = 1;
                    } else {
                        i11 = 0;
                    }
                    Font build = weight.setSlant(i11).setTtcIndex(c0338d.c()).setFontVariationSettings(c0338d.d()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(i(build2, i10).getStyle()).build();
        } catch (Exception e10) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e10);
            return null;
        }
    }

    @Override // v.m
    public Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10) {
        try {
            FontFamily j10 = j(cancellationSignal, bVarArr, context.getContentResolver());
            if (j10 == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(j10).setStyle(i(j10, i10).getStyle()).build();
        } catch (Exception e10) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e10);
            return null;
        }
    }

    @Override // v.m
    public Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily j10 = j(cancellationSignal, (k.b[]) list.get(0), contentResolver);
            if (j10 == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(j10);
            for (int i11 = 1; i11 < list.size(); i11++) {
                FontFamily j11 = j(cancellationSignal, (k.b[]) list.get(i11), contentResolver);
                if (j11 != null) {
                    customFallbackBuilder.addCustomFallback(j11);
                }
            }
            return customFallbackBuilder.setStyle(i(j10, i10).getStyle()).build();
        } catch (Exception e10) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e10);
            return null;
        }
    }

    @Override // v.m
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        try {
            Font build = new Font.Builder(resources, i10).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e10) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v.m
    public k.b h(k.b[] bVarArr, int i10) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
