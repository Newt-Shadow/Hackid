package vb;

import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import java.util.HashMap;
import java.util.Map;
import tb.c0;
/* loaded from: classes.dex */
public abstract class h {
    public static Map a(e eVar) {
        c0 b10 = eVar.b();
        if (b10 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("sql", b10.c());
            hashMap.put(FFmpegKitFlutterPlugin.ARGUMENT_ARGUMENTS, b10.b());
            return hashMap;
        }
        return null;
    }
}
