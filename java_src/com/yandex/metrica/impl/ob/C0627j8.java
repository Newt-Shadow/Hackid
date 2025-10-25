package com.yandex.metrica.impl.ob;

import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.ob.C0808qf;
import com.yandex.metrica.impl.ob.E;
import com.yandex.metrica.impl.ob.X7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.List;
import java.util.Locale;
import org.apache.tika.metadata.ClimateForcast;
/* renamed from: com.yandex.metrica.impl.ob.j8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0627j8 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f12672a = YandexMetrica.getLibraryApiLevel();

    /* renamed from: b  reason: collision with root package name */
    private static final N7 f12673b;

    /* renamed from: c  reason: collision with root package name */
    private static final P7 f12674c;

    /* renamed from: d  reason: collision with root package name */
    private static final M7 f12675d;

    /* renamed from: com.yandex.metrica.impl.ob.j8$a */
    /* loaded from: classes2.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f12676a = A2.a("incremental_id", Constants.TIMESTAMP, "data");

        /* renamed from: com.yandex.metrica.impl.ob.j8$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0130a {

            /* renamed from: a  reason: collision with root package name */
            public static final String f12677a;

            /* renamed from: b  reason: collision with root package name */
            public static final String f12678b;

            static {
                Locale locale = Locale.US;
                f12677a = String.format(locale, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", "lbs_dat");
                f12678b = String.format(locale, "DROP TABLE IF EXISTS %s", "lbs_dat");
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.j8$a$b */
        /* loaded from: classes2.dex */
        public interface b {

            /* renamed from: a  reason: collision with root package name */
            public static final String f12679a;

            /* renamed from: b  reason: collision with root package name */
            public static final String f12680b;

            static {
                Locale locale = Locale.US;
                f12679a = String.format(locale, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", "l_dat");
                f12680b = String.format(locale, "DROP TABLE IF EXISTS %s", "l_dat");
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$b */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f12681a = A2.a("data_key", "value");
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$c */
    /* loaded from: classes2.dex */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f12682a = A2.a("key", "value", "type");
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$d */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f12683a = A2.a(Chapter.KEY_ID, "number", "global_number", "number_of_type", io.flutter.plugins.firebase.analytics.Constants.NAME, "value", "type", FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, "session_id", "wifi_network_info", "cell_info", "location_info", "error_environment", "user_info", "session_type", "app_environment", "app_environment_revision", "truncated", "connection_type", "cellular_connection_type", "custom_type", "wifi_access_point", "encrypting_mode", "profile_id", "first_occurrence_status", "battery_charge_type", "collection_mode", "has_omitted_data", "call_state", ClimateForcast.SOURCE, "attribution_id_changed", "open_id", "extras");

        /* renamed from: b  reason: collision with root package name */
        public static final String f12684b = "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,global_number INTEGER,number_of_type INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT '',cell_info TEXT DEFAULT '',location_info TEXT DEFAULT '',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT " + EnumC0526f6.FOREGROUND.a() + StringUtils.COMMA + "app_environment TEXT DEFAULT '{}',app_environment_revision INTEGER DEFAULT 0" + StringUtils.COMMA + "truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2" + StringUtils.COMMA + "cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT, encrypting_mode INTEGER DEFAULT " + Em.NONE.a() + ", profile_id TEXT, first_occurrence_status INTEGER DEFAULT 0, battery_charge_type INTEGER DEFAULT " + E.b.a.UNKNOWN.a() + ", collection_mode TEXT, has_omitted_data INTEGER DEFAULT -1, call_state INTEGER DEFAULT 0, " + ClimateForcast.SOURCE + " INTEGER DEFAULT 0, attribution_id_changed INTEGER DEFAULT 0, open_id INTEGER DEFAULT " + new C0808qf.d.a().f13357w + ", extras BLOB )";
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$e */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f12685a = A2.a(Chapter.KEY_ID, "start_time", "network_info", "report_request_parameters", "server_time_offset", "type", "obtained_before_first_sync");

        /* renamed from: b  reason: collision with root package name */
        public static final String f12686b = "CREATE TABLE IF NOT EXISTS sessions (id INTEGER,start_time INTEGER,network_info TEXT,report_request_parameters TEXT,server_time_offset INTEGER,type INTEGER DEFAULT " + EnumC0526f6.FOREGROUND.a() + StringUtils.COMMA + "obtained_before_first_sync INTEGER DEFAULT 0 )";

        /* renamed from: c  reason: collision with root package name */
        public static final String f12687c;

        /* renamed from: d  reason: collision with root package name */
        public static final String f12688d;

        static {
            Locale locale = Locale.US;
            f12687c = String.format(locale, "SELECT DISTINCT %s  FROM %s WHERE %s >=0 AND (SELECT count() FROM %5$s WHERE %5$s.%6$s = %2$s.%3$s AND %5$s.%7$s = %2$s.%4$s) > 0 ORDER BY %3$s LIMIT 1", "report_request_parameters", "sessions", Chapter.KEY_ID, "type", "reports", "session_id", "session_type");
            f12688d = String.format(locale, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and cast(%s as integer) < ?", "reports", Chapter.KEY_ID, "reports", "reports", "session_id", "sessions", Chapter.KEY_ID, Chapter.KEY_ID);
        }
    }

    static {
        N7 n72 = new N7();
        f12673b = n72;
        P7 p72 = new P7();
        f12674c = p72;
        f12675d = new M7(n72, p72, new X7.b());
    }

    public static M7 a() {
        return f12675d;
    }
}
