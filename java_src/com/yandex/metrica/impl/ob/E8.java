package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.arthenica.ffmpegkit.Chapter;
import com.yandex.metrica.impl.ob.C0627j8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class E8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sessions_BACKUP (" + Chapter.KEY_ID + " INTEGER" + StringUtils.COMMA + "start_time INTEGER" + StringUtils.COMMA + "connection_type INTEGER" + StringUtils.COMMA + "network_type TEXT" + StringUtils.COMMA + "country_code INTEGER" + StringUtils.COMMA + "operator_id INTEGER" + StringUtils.COMMA + "lac INTEGER" + StringUtils.COMMA + "report_request_parameters TEXT );");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Chapter.KEY_ID);
        sb2.append(StringUtils.COMMA);
        sb2.append("start_time");
        sb2.append(StringUtils.COMMA);
        sb2.append("connection_type");
        sb2.append(StringUtils.COMMA);
        sb2.append("network_type");
        sb2.append(StringUtils.COMMA);
        sb2.append("country_code");
        sb2.append(StringUtils.COMMA);
        sb2.append("operator_id");
        sb2.append(StringUtils.COMMA);
        sb2.append("lac");
        sb2.append(StringUtils.COMMA);
        sb2.append("report_request_parameters");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("INSERT INTO ");
        sb3.append("sessions_BACKUP");
        sb3.append(" SELECT ");
        sb3.append((CharSequence) sb2);
        sb3.append(" FROM ");
        sb3.append("sessions");
        sb3.append(";");
        sQLiteDatabase.execSQL(sb3.toString());
        sQLiteDatabase.execSQL("DROP TABLE sessions;");
        sQLiteDatabase.execSQL(C0627j8.e.f12686b);
        Cursor cursor = null;
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM sessions_BACKUP", null);
            while (rawQuery.moveToNext()) {
                try {
                    ContentValues contentValues = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(rawQuery, contentValues);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Chapter.KEY_ID);
                    arrayList.add("start_time");
                    arrayList.add("report_request_parameters");
                    ContentValues contentValues2 = new ContentValues(contentValues);
                    for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                        if (!arrayList.contains(entry.getKey())) {
                            contentValues2.remove(entry.getKey());
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        contentValues.remove((String) it.next());
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("conn_type", contentValues.getAsInteger("connection_type"));
                    jSONObject.putOpt("net_type", contentValues.get("network_type"));
                    jSONObject.putOpt("operator_id", contentValues.get("operator_id"));
                    jSONObject.putOpt("lac", contentValues.get("lac"));
                    jSONObject.putOpt("country_code", contentValues.get("country_code"));
                    contentValues2.put("network_info", jSONObject.toString());
                    sQLiteDatabase.insertOrThrow("sessions", null, contentValues2);
                } catch (Throwable th) {
                    th = th;
                    cursor = rawQuery;
                    A2.a(cursor);
                    throw th;
                }
            }
            A2.a(rawQuery);
            sQLiteDatabase.execSQL("DROP TABLE sessions_BACKUP;");
            sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN wifi_network_info TEXT DEFAULT ''");
            sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN cell_info TEXT DEFAULT ''");
            sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN location_info TEXT DEFAULT ''");
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
