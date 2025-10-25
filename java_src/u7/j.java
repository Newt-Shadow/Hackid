package u7;

import android.util.Base64;
import android.util.JsonReader;
import com.arthenica.ffmpegkit.MediaInformation;
import io.appmetrica.analytics.impl.H2;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import t7.f0;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a */
    private static final d8.a f30826a = new f8.d().j(t7.a.f30066a).k(true).i();

    /* loaded from: classes.dex */
    public interface a {
        Object a(JsonReader jsonReader);
    }

    private static f0.e.d.f A(JsonReader jsonReader) {
        f0.e.d.f.a a10 = f0.e.d.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("assignments")) {
                jsonReader.skipValue();
            } else {
                a10.b(n(jsonReader, new a() { // from class: u7.c
                    @Override // u7.j.a
                    public final Object a(JsonReader jsonReader2) {
                        f0.e.d.AbstractC0335e z10;
                        z10 = j.z(jsonReader2);
                        return z10;
                    }
                }));
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.a.b.AbstractC0327d B(JsonReader jsonReader) {
        f0.e.d.a.b.AbstractC0327d.AbstractC0328a a10 = f0.e.d.a.b.AbstractC0327d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1147692044:
                    if (nextName.equals("address")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3059181:
                    if (nextName.equals("code")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals(Constants.NAME)) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(jsonReader.nextLong());
                    break;
                case 1:
                    a10.c(jsonReader.nextString());
                    break;
                case 2:
                    a10.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d.a.b.AbstractC0329e C(JsonReader jsonReader) {
        f0.e.d.a.b.AbstractC0329e.AbstractC0330a a10 = f0.e.d.a.b.AbstractC0329e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals(Constants.NAME)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(n(jsonReader, new i()));
                    break;
                case 1:
                    a10.d(jsonReader.nextString());
                    break;
                case 2:
                    a10.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.d.b D(JsonReader jsonReader) {
        f0.d.b.a a10 = f0.d.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals(MediaInformation.KEY_FILENAME)) {
                if (!nextName.equals("contents")) {
                    jsonReader.skipValue();
                } else {
                    a10.b(Base64.decode(jsonReader.nextString(), 2));
                }
            } else {
                a10.c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.d E(JsonReader jsonReader) {
        f0.d.a a10 = f0.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("files")) {
                if (!nextName.equals("orgId")) {
                    jsonReader.skipValue();
                } else {
                    a10.c(jsonReader.nextString());
                }
            } else {
                a10.b(n(jsonReader, new a() { // from class: u7.b
                    @Override // u7.j.a
                    public final Object a(JsonReader jsonReader2) {
                        f0.d.b D;
                        D = j.D(jsonReader2);
                        return D;
                    }
                }));
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.AbstractC0336e F(JsonReader jsonReader) {
        f0.e.AbstractC0336e.a a10 = f0.e.AbstractC0336e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(jsonReader.nextString());
                    break;
                case 1:
                    a10.c(jsonReader.nextBoolean());
                    break;
                case 2:
                    a10.e(jsonReader.nextString());
                    break;
                case 3:
                    a10.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d.a.c G(JsonReader jsonReader) {
        f0.e.d.a.c.AbstractC0333a a10 = f0.e.d.a.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 110987:
                    if (nextName.equals("pid")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 202325402:
                    if (nextName.equals("processName")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1694598382:
                    if (nextName.equals("defaultProcess")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.d(jsonReader.nextInt());
                    break;
                case 1:
                    a10.e(jsonReader.nextString());
                    break;
                case 2:
                    a10.b(jsonReader.nextBoolean());
                    break;
                case 3:
                    a10.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0 H(JsonReader jsonReader) {
        f0.b b10 = f0.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1907185581:
                    if (nextName.equals("appQualitySessionId")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1375141843:
                    if (nextName.equals("appExitInfo")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -401988390:
                    if (nextName.equals("firebaseAuthenticationToken")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1047652060:
                    if (nextName.equals("firebaseInstallationId")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        c10 = 11;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    b10.j(E(jsonReader));
                    break;
                case 1:
                    b10.l(jsonReader.nextString());
                    break;
                case 2:
                    b10.c(jsonReader.nextString());
                    break;
                case 3:
                    b10.b(m(jsonReader));
                    break;
                case 4:
                    b10.d(jsonReader.nextString());
                    break;
                case 5:
                    b10.f(jsonReader.nextString());
                    break;
                case 6:
                    b10.h(jsonReader.nextString());
                    break;
                case 7:
                    b10.i(jsonReader.nextString());
                    break;
                case '\b':
                    b10.g(jsonReader.nextString());
                    break;
                case '\t':
                    b10.k(jsonReader.nextInt());
                    break;
                case '\n':
                    b10.e(jsonReader.nextString());
                    break;
                case 11:
                    b10.m(J(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return b10.a();
    }

    private static f0.e.d.AbstractC0335e.b I(JsonReader jsonReader) {
        f0.e.d.AbstractC0335e.b.a a10 = f0.e.d.AbstractC0335e.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("variantId")) {
                if (!nextName.equals("rolloutId")) {
                    jsonReader.skipValue();
                } else {
                    a10.b(jsonReader.nextString());
                }
            } else {
                a10.c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e J(JsonReader jsonReader) {
        f0.e.b a10 = f0.e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1907185581:
                    if (nextName.equals("appQualitySessionId")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.IDENTIFIER)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals("events")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        c10 = 11;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.m(jsonReader.nextLong());
                    break;
                case 1:
                    a10.c(jsonReader.nextString());
                    break;
                case 2:
                    a10.k(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    a10.f(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 4:
                    a10.e(q(jsonReader));
                    break;
                case 5:
                    a10.g(n(jsonReader, new a() { // from class: u7.a
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.e.d r10;
                            r10 = j.r(jsonReader2);
                            return r10;
                        }
                    }));
                    break;
                case 6:
                    a10.l(F(jsonReader));
                    break;
                case 7:
                    a10.b(l(jsonReader));
                    break;
                case '\b':
                    a10.n(K(jsonReader));
                    break;
                case '\t':
                    a10.h(jsonReader.nextString());
                    break;
                case '\n':
                    a10.d(jsonReader.nextBoolean());
                    break;
                case 11:
                    a10.i(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.f K(JsonReader jsonReader) {
        f0.e.f.a a10 = f0.e.f.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals(io.flutter.plugins.firebase.crashlytics.Constants.IDENTIFIER)) {
                a10.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.a l(JsonReader jsonReader) {
        f0.e.a.AbstractC0321a a10 = f0.e.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.IDENTIFIER)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.e(jsonReader.nextString());
                    break;
                case 1:
                    a10.b(jsonReader.nextString());
                    break;
                case 2:
                    a10.c(jsonReader.nextString());
                    break;
                case 3:
                    a10.g(jsonReader.nextString());
                    break;
                case 4:
                    a10.f(jsonReader.nextString());
                    break;
                case 5:
                    a10.d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.a m(JsonReader jsonReader) {
        f0.a.b a10 = f0.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1516200806:
                    if (nextName.equals("buildIdMappingForArch")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 110987:
                    if (nextName.equals("pid")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 111312:
                    if (nextName.equals("pss")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 113234:
                    if (nextName.equals("rss")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.TIMESTAMP)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 202325402:
                    if (nextName.equals("processName")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 722137681:
                    if (nextName.equals("reasonCode")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 723857505:
                    if (nextName.equals("traceFile")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c10 = '\b';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(n(jsonReader, new a() { // from class: u7.f
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.a.AbstractC0319a o10;
                            o10 = j.o(jsonReader2);
                            return o10;
                        }
                    }));
                    break;
                case 1:
                    a10.d(jsonReader.nextInt());
                    break;
                case 2:
                    a10.f(jsonReader.nextLong());
                    break;
                case 3:
                    a10.h(jsonReader.nextLong());
                    break;
                case 4:
                    a10.i(jsonReader.nextLong());
                    break;
                case 5:
                    a10.e(jsonReader.nextString());
                    break;
                case 6:
                    a10.g(jsonReader.nextInt());
                    break;
                case 7:
                    a10.j(jsonReader.nextString());
                    break;
                case '\b':
                    a10.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static List n(JsonReader jsonReader, a aVar) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    public static f0.a.AbstractC0319a o(JsonReader jsonReader) {
        f0.a.AbstractC0319a.AbstractC0320a a10 = f0.a.AbstractC0319a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -609862170:
                    if (nextName.equals("libraryName")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 230943785:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.BUILD_ID)) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.d(jsonReader.nextString());
                    break;
                case 1:
                    a10.b(jsonReader.nextString());
                    break;
                case 2:
                    a10.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.c p(JsonReader jsonReader) {
        f0.c.a a10 = f0.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("key")) {
                if (!nextName.equals("value")) {
                    jsonReader.skipValue();
                } else {
                    a10.c(jsonReader.nextString());
                }
            } else {
                a10.b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.c q(JsonReader jsonReader) {
        f0.e.c.a a10 = f0.e.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals(CommonUrlParts.MANUFACTURER)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals(CommonUrlParts.MODEL)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals("state")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        c10 = '\b';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.i(jsonReader.nextBoolean());
                    break;
                case 1:
                    a10.e(jsonReader.nextString());
                    break;
                case 2:
                    a10.h(jsonReader.nextLong());
                    break;
                case 3:
                    a10.b(jsonReader.nextInt());
                    break;
                case 4:
                    a10.d(jsonReader.nextLong());
                    break;
                case 5:
                    a10.c(jsonReader.nextInt());
                    break;
                case 6:
                    a10.f(jsonReader.nextString());
                    break;
                case 7:
                    a10.j(jsonReader.nextInt());
                    break;
                case '\b':
                    a10.g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d r(JsonReader jsonReader) {
        f0.e.d.b a10 = f0.e.d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -259312414:
                    if (nextName.equals("rollouts")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.TIMESTAMP)) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.c(u(jsonReader));
                    break;
                case 1:
                    a10.e(A(jsonReader));
                    break;
                case 2:
                    a10.b(s(jsonReader));
                    break;
                case 3:
                    a10.d(y(jsonReader));
                    break;
                case 4:
                    a10.g(jsonReader.nextString());
                    break;
                case 5:
                    a10.f(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.a s(JsonReader jsonReader) {
        f0.e.d.a.AbstractC0322a a10 = f0.e.d.a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1405314732:
                    if (nextName.equals("appProcessDetails")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1332194002:
                    if (nextName.equals(H2.f18288g)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -80231855:
                    if (nextName.equals("internalKeys")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 1847730860:
                    if (nextName.equals("currentProcessDetails")) {
                        c10 = 6;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(n(jsonReader, new a() { // from class: u7.e
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.e.d.a.c G;
                            G = j.G(jsonReader2);
                            return G;
                        }
                    }));
                    break;
                case 1:
                    a10.c(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case 2:
                    a10.f(v(jsonReader));
                    break;
                case 3:
                    a10.g(n(jsonReader, new a() { // from class: u7.d
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.c p10;
                            p10 = j.p(jsonReader2);
                            return p10;
                        }
                    }));
                    break;
                case 4:
                    a10.e(n(jsonReader, new a() { // from class: u7.d
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.c p10;
                            p10 = j.p(jsonReader2);
                            return p10;
                        }
                    }));
                    break;
                case 5:
                    a10.h(jsonReader.nextInt());
                    break;
                case 6:
                    a10.d(G(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d.a.b.AbstractC0323a t(JsonReader jsonReader) {
        f0.e.d.a.b.AbstractC0323a.AbstractC0324a a10 = f0.e.d.a.b.AbstractC0323a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals(Constants.NAME)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals(CommonUrlParts.UUID)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.c(jsonReader.nextString());
                    break;
                case 1:
                    a10.d(jsonReader.nextLong());
                    break;
                case 2:
                    a10.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    a10.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.c u(JsonReader jsonReader) {
        f0.e.d.c.a a10 = f0.e.d.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case 1:
                    a10.c(jsonReader.nextInt());
                    break;
                case 2:
                    a10.e(jsonReader.nextInt());
                    break;
                case 3:
                    a10.d(jsonReader.nextLong());
                    break;
                case 4:
                    a10.g(jsonReader.nextLong());
                    break;
                case 5:
                    a10.f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.a.b v(JsonReader jsonReader) {
        f0.e.d.a.b.AbstractC0325b a10 = f0.e.d.a.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1375141843:
                    if (nextName.equals("appExitInfo")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1337936983:
                    if (nextName.equals("threads")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.EXCEPTION)) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(m(jsonReader));
                    break;
                case 1:
                    a10.f(n(jsonReader, new a() { // from class: u7.g
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.e.d.a.b.AbstractC0329e C;
                            C = j.C(jsonReader2);
                            return C;
                        }
                    }));
                    break;
                case 2:
                    a10.e(B(jsonReader));
                    break;
                case 3:
                    a10.c(n(jsonReader, new a() { // from class: u7.h
                        @Override // u7.j.a
                        public final Object a(JsonReader jsonReader2) {
                            f0.e.d.a.b.AbstractC0323a t10;
                            t10 = j.t(jsonReader2);
                            return t10;
                        }
                    }));
                    break;
                case 4:
                    a10.d(w(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.a.b.c w(JsonReader jsonReader) {
        f0.e.d.a.b.c.AbstractC0326a a10 = f0.e.d.a.b.c.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.REASON)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.c(n(jsonReader, new i()));
                    break;
                case 1:
                    a10.e(jsonReader.nextString());
                    break;
                case 2:
                    a10.f(jsonReader.nextString());
                    break;
                case 3:
                    a10.b(w(jsonReader));
                    break;
                case 4:
                    a10.d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d.a.b.AbstractC0329e.AbstractC0331b x(JsonReader jsonReader) {
        f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a a10 = f0.e.d.a.b.AbstractC0329e.AbstractC0331b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals(MimeTypesReaderMetKeys.MATCH_OFFSET_ATTR)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals(io.flutter.plugins.firebase.crashlytics.Constants.FILE)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.d(jsonReader.nextLong());
                    break;
                case 1:
                    a10.f(jsonReader.nextString());
                    break;
                case 2:
                    a10.e(jsonReader.nextLong());
                    break;
                case 3:
                    a10.b(jsonReader.nextString());
                    break;
                case 4:
                    a10.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    private static f0.e.d.AbstractC0334d y(JsonReader jsonReader) {
        f0.e.d.AbstractC0334d.a a10 = f0.e.d.AbstractC0334d.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                a10.b(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public static f0.e.d.AbstractC0335e z(JsonReader jsonReader) {
        f0.e.d.AbstractC0335e.a a10 = f0.e.d.AbstractC0335e.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1536268810:
                    if (nextName.equals("parameterKey")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1027290370:
                    if (nextName.equals("templateVersion")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1098747284:
                    if (nextName.equals("rolloutVariant")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1124454216:
                    if (nextName.equals("parameterValue")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    a10.b(jsonReader.nextString());
                    break;
                case 1:
                    a10.e(jsonReader.nextLong());
                    break;
                case 2:
                    a10.d(I(jsonReader));
                    break;
                case 3:
                    a10.c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a10.a();
    }

    public f0 L(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            f0 H = H(jsonReader);
            jsonReader.close();
            return H;
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String M(f0 f0Var) {
        return f30826a.b(f0Var);
    }

    public f0.e.d j(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            f0.e.d r10 = r(jsonReader);
            jsonReader.close();
            return r10;
        } catch (IllegalStateException e10) {
            throw new IOException(e10);
        }
    }

    public String k(f0.e.d dVar) {
        return f30826a.b(dVar);
    }
}
