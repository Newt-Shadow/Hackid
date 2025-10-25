package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.a;
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f2027a = aVar.p(iconCompat.f2027a, 1);
        iconCompat.f2029c = aVar.j(iconCompat.f2029c, 2);
        iconCompat.f2030d = aVar.r(iconCompat.f2030d, 3);
        iconCompat.f2031e = aVar.p(iconCompat.f2031e, 4);
        iconCompat.f2032f = aVar.p(iconCompat.f2032f, 5);
        iconCompat.f2033g = (ColorStateList) aVar.r(iconCompat.f2033g, 6);
        iconCompat.f2035i = aVar.t(iconCompat.f2035i, 7);
        iconCompat.f2036j = aVar.t(iconCompat.f2036j, 8);
        iconCompat.r();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.x(true, true);
        iconCompat.s(aVar.f());
        int i10 = iconCompat.f2027a;
        if (-1 != i10) {
            aVar.F(i10, 1);
        }
        byte[] bArr = iconCompat.f2029c;
        if (bArr != null) {
            aVar.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f2030d;
        if (parcelable != null) {
            aVar.H(parcelable, 3);
        }
        int i11 = iconCompat.f2031e;
        if (i11 != 0) {
            aVar.F(i11, 4);
        }
        int i12 = iconCompat.f2032f;
        if (i12 != 0) {
            aVar.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f2033g;
        if (colorStateList != null) {
            aVar.H(colorStateList, 6);
        }
        String str = iconCompat.f2035i;
        if (str != null) {
            aVar.J(str, 7);
        }
        String str2 = iconCompat.f2036j;
        if (str2 != null) {
            aVar.J(str2, 8);
        }
    }
}
