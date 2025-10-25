package vb;

import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import java.util.List;
import org.apache.tika.utils.StringUtils;
import tb.c0;
/* loaded from: classes.dex */
public abstract class b implements e {
    private Boolean i(String str) {
        Object a10 = a(str);
        if (a10 instanceof Boolean) {
            return (Boolean) a10;
        }
        return null;
    }

    private String k() {
        return (String) a("sql");
    }

    private List l() {
        return (List) a(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS);
    }

    @Override // vb.e
    public c0 b() {
        return new c0(k(), l());
    }

    @Override // vb.e
    public boolean c() {
        return Boolean.TRUE.equals(a("noResult"));
    }

    @Override // vb.e
    public Integer d() {
        return (Integer) a("transactionId");
    }

    @Override // vb.e
    public boolean e() {
        if (g("transactionId") && d() == null) {
            return true;
        }
        return false;
    }

    @Override // vb.e
    public Boolean h() {
        return i("inTransaction");
    }

    public boolean j() {
        return Boolean.TRUE.equals(a("continueOnError"));
    }

    public String toString() {
        return f() + StringUtils.SPACE + k() + StringUtils.SPACE + l();
    }
}
