package g3;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import t3.a;
import y4.q0;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f16243c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f16244a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f16245b = -1;

    private boolean b(String str) {
        Matcher matcher = f16243c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) q0.j(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) q0.j(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f16244a = parseInt;
                    this.f16245b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        if (this.f16244a != -1 && this.f16245b != -1) {
            return true;
        }
        return false;
    }

    public boolean c(t3.a aVar) {
        for (int i10 = 0; i10 < aVar.e(); i10++) {
            a.b d10 = aVar.d(i10);
            if (d10 instanceof y3.e) {
                y3.e eVar = (y3.e) d10;
                if ("iTunSMPB".equals(eVar.f32833c) && b(eVar.f32834d)) {
                    return true;
                }
            } else if (d10 instanceof y3.j) {
                y3.j jVar = (y3.j) d10;
                if ("com.apple.iTunes".equals(jVar.f32845b) && "iTunSMPB".equals(jVar.f32846c) && b(jVar.f32847d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        int i11 = i10 >> 12;
        int i12 = i10 & 4095;
        if (i11 <= 0 && i12 <= 0) {
            return false;
        }
        this.f16244a = i11;
        this.f16245b = i12;
        return true;
    }
}
