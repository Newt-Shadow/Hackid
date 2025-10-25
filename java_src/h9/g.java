package h9;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.EnumMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f16915a = "g";

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f16916b = Pattern.compile(StringUtils.COMMA);

    public static Map a(Intent intent) {
        d9.e[] values;
        Bundle extras = intent.getExtras();
        if (extras != null && !extras.isEmpty()) {
            EnumMap enumMap = new EnumMap(d9.e.class);
            for (d9.e eVar : d9.e.values()) {
                if (eVar != d9.e.CHARACTER_SET && eVar != d9.e.NEED_RESULT_POINT_CALLBACK && eVar != d9.e.POSSIBLE_FORMATS) {
                    String name = eVar.name();
                    if (extras.containsKey(name)) {
                        if (eVar.b().equals(Void.class)) {
                            enumMap.put((EnumMap) eVar, (d9.e) Boolean.TRUE);
                        } else {
                            Object obj = extras.get(name);
                            if (eVar.b().isInstance(obj)) {
                                enumMap.put((EnumMap) eVar, (d9.e) obj);
                            } else {
                                Log.w(f16915a, "Ignoring hint " + eVar + " because it is not assignable from " + obj);
                            }
                        }
                    }
                }
            }
            Log.i(f16915a, "Hints from the Intent: " + enumMap);
            return enumMap;
        }
        return null;
    }
}
