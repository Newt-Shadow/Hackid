package tb;

import android.database.Cursor;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public abstract class d0 {
    public static List a(Cursor cursor, int i10) {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            Object b10 = b(cursor, i11);
            if (ub.a.f31086c) {
                if (b10 != null) {
                    if (b10.getClass().isArray()) {
                        str = "array(" + b10.getClass().getComponentType().getName() + ")";
                    } else {
                        str = b10.getClass().getName();
                    }
                } else {
                    str = null;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("column ");
                sb2.append(i11);
                sb2.append(StringUtils.SPACE);
                sb2.append(cursor.getType(i11));
                sb2.append(": ");
                sb2.append(b10);
                if (str == null) {
                    str2 = "";
                } else {
                    str2 = " (" + str + ")";
                }
                sb2.append(str2);
                Log.d("Sqflite", sb2.toString());
            }
            arrayList.add(b10);
        }
        return arrayList;
    }

    public static Object b(Cursor cursor, int i10) {
        int type = cursor.getType(i10);
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    if (type != 4) {
                        return null;
                    }
                    return cursor.getBlob(i10);
                }
                return cursor.getString(i10);
            }
            return Double.valueOf(cursor.getDouble(i10));
        }
        return Long.valueOf(cursor.getLong(i10));
    }

    static Locale c(String str) {
        return Locale.forLanguageTag(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Locale d(String str) {
        return c(str);
    }
}
