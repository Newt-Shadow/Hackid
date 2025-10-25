package r4;

import android.text.TextUtils;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f28933a;

    /* renamed from: b  reason: collision with root package name */
    public final int f28934b;

    /* renamed from: c  reason: collision with root package name */
    public final int f28935c;

    /* renamed from: d  reason: collision with root package name */
    public final int f28936d;

    /* renamed from: e  reason: collision with root package name */
    public final int f28937e;

    private b(int i10, int i11, int i12, int i13, int i14) {
        this.f28933a = i10;
        this.f28934b = i11;
        this.f28935c = i12;
        this.f28936d = i13;
        this.f28937e = i14;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static b a(String str) {
        char c10;
        y4.a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), StringUtils.COMMA);
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < split.length; i14++) {
            String e10 = n6.c.e(split[i14].trim());
            e10.hashCode();
            switch (e10.hashCode()) {
                case 100571:
                    if (e10.equals(Chapter.KEY_END)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3556653:
                    if (e10.equals("text")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109757538:
                    if (e10.equals(Chapter.KEY_START)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (e10.equals("style")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    i11 = i14;
                    break;
                case 1:
                    i13 = i14;
                    break;
                case 2:
                    i10 = i14;
                    break;
                case 3:
                    i12 = i14;
                    break;
            }
        }
        if (i10 != -1 && i11 != -1 && i13 != -1) {
            return new b(i10, i11, i12, i13, split.length);
        }
        return null;
    }
}
