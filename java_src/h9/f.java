package h9;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f16906a = Pattern.compile(StringUtils.COMMA);

    /* renamed from: b  reason: collision with root package name */
    static final Set f16907b;

    /* renamed from: c  reason: collision with root package name */
    static final Set f16908c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set f16909d;

    /* renamed from: e  reason: collision with root package name */
    static final Set f16910e;

    /* renamed from: f  reason: collision with root package name */
    static final Set f16911f;

    /* renamed from: g  reason: collision with root package name */
    static final Set f16912g;

    /* renamed from: h  reason: collision with root package name */
    static final Set f16913h;

    /* renamed from: i  reason: collision with root package name */
    private static final Map f16914i;

    static {
        EnumSet of2 = EnumSet.of(d9.a.QR_CODE);
        f16910e = of2;
        EnumSet of3 = EnumSet.of(d9.a.DATA_MATRIX);
        f16911f = of3;
        EnumSet of4 = EnumSet.of(d9.a.AZTEC);
        f16912g = of4;
        EnumSet of5 = EnumSet.of(d9.a.PDF_417);
        f16913h = of5;
        EnumSet of6 = EnumSet.of(d9.a.UPC_A, d9.a.UPC_E, d9.a.EAN_13, d9.a.EAN_8, d9.a.RSS_14, d9.a.RSS_EXPANDED);
        f16907b = of6;
        EnumSet of7 = EnumSet.of(d9.a.CODE_39, d9.a.CODE_93, d9.a.CODE_128, d9.a.ITF, d9.a.CODABAR);
        f16908c = of7;
        EnumSet copyOf = EnumSet.copyOf((Collection) of6);
        f16909d = copyOf;
        copyOf.addAll(of7);
        HashMap hashMap = new HashMap();
        f16914i = hashMap;
        hashMap.put("ONE_D_MODE", copyOf);
        hashMap.put("PRODUCT_MODE", of6);
        hashMap.put("QR_CODE_MODE", of2);
        hashMap.put("DATA_MATRIX_MODE", of3);
        hashMap.put("AZTEC_MODE", of4);
        hashMap.put("PDF417_MODE", of5);
    }

    public static Set a(Intent intent) {
        List list;
        String stringExtra = intent.getStringExtra("SCAN_FORMATS");
        if (stringExtra != null) {
            list = Arrays.asList(f16906a.split(stringExtra));
        } else {
            list = null;
        }
        return b(list, intent.getStringExtra("SCAN_MODE"));
    }

    private static Set b(Iterable iterable, String str) {
        if (iterable != null) {
            EnumSet noneOf = EnumSet.noneOf(d9.a.class);
            try {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    noneOf.add(d9.a.valueOf((String) it.next()));
                }
                return noneOf;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (str != null) {
            return (Set) f16914i.get(str);
        }
        return null;
    }
}
