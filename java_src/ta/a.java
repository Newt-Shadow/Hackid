package ta;

import android.util.Log;
import gd.k;
import java.io.File;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import pa.g;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: h  reason: collision with root package name */
    public static final C0337a f30501h = new C0337a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Integer f30502a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f30503b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f30504c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f30505d;

    /* renamed from: e  reason: collision with root package name */
    private final String f30506e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f30507f;

    /* renamed from: g  reason: collision with root package name */
    private final g f30508g;

    /* renamed from: ta.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0337a {
        private C0337a() {
        }

        public /* synthetic */ C0337a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Map map) {
            Object obj;
            Object obj2;
            Object obj3;
            Object obj4;
            Object obj5;
            Object obj6;
            boolean z10;
            String str;
            g gVar = g.high;
            Object obj7 = null;
            if (map != null) {
                obj = map.get("resolutionPreset");
            } else {
                obj = null;
            }
            if (obj instanceof String) {
                Object obj8 = map.get("resolutionPreset");
                m.c(obj8, "null cannot be cast to non-null type kotlin.String");
                gVar = g.valueOf((String) obj8);
            }
            g gVar2 = gVar;
            if (map != null) {
                obj2 = map.get("bitRate");
            } else {
                obj2 = null;
            }
            Integer num = (Integer) obj2;
            if (map != null) {
                obj3 = map.get("videoCodec");
            } else {
                obj3 = null;
            }
            Integer num2 = (Integer) obj3;
            if (map != null) {
                obj4 = map.get("frameRate");
            } else {
                obj4 = null;
            }
            Integer num3 = (Integer) obj4;
            if (map != null) {
                obj5 = map.get("maxFileSize");
            } else {
                obj5 = null;
            }
            Integer num4 = (Integer) obj5;
            if (map != null) {
                obj6 = map.get("enableAudio");
            } else {
                obj6 = null;
            }
            Boolean bool = (Boolean) obj6;
            if (bool != null) {
                z10 = bool.booleanValue();
            } else {
                z10 = false;
            }
            boolean z11 = z10;
            if (map != null) {
                obj7 = map.get("fileExtension");
            }
            String str2 = (String) obj7;
            if (str2 == null) {
                str = "mp4";
            } else {
                str = str2;
            }
            return new a(num, num2, num3, num4, str, z11, gVar2);
        }
    }

    public a(Integer num, Integer num2, Integer num3, Integer num4, String fileExtension, boolean z10, g resolutionPreset) {
        m.e(fileExtension, "fileExtension");
        m.e(resolutionPreset, "resolutionPreset");
        this.f30502a = num;
        this.f30503b = num2;
        this.f30504c = num3;
        this.f30505d = num4;
        this.f30506e = fileExtension;
        this.f30507f = z10;
        this.f30508g = resolutionPreset;
    }

    public final File a(File outputDir) {
        m.e(outputDir, "outputDir");
        String str = outputDir.getAbsolutePath() + '/' + System.currentTimeMillis() + '.' + this.f30506e;
        Log.d("MediaRecorderSettings", "createFile: " + str);
        File file = new File(str);
        file.createNewFile();
        return file;
    }

    public final File b(File file, Long l10) {
        String n10;
        String n11;
        String str;
        m.e(file, "file");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("finishFile: ");
        n10 = k.n(file);
        sb2.append(n10);
        Log.d("MediaRecorderSettings", sb2.toString());
        if (l10 == null) {
            n11 = k.n(file);
        } else {
            n11 = String.valueOf(l10);
        }
        StringBuilder sb3 = new StringBuilder();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            str = parentFile.getAbsolutePath();
        } else {
            str = null;
        }
        sb3.append(str);
        sb3.append('/');
        sb3.append(n11);
        sb3.append('-');
        sb3.append(System.currentTimeMillis());
        sb3.append('.');
        sb3.append(this.f30506e);
        file.renameTo(new File(sb3.toString()));
        return file;
    }

    public final Integer c() {
        return this.f30502a;
    }

    public final boolean d() {
        return this.f30507f;
    }

    public final String e() {
        return this.f30506e;
    }

    public final Integer f() {
        return this.f30504c;
    }

    public final Integer g() {
        return this.f30505d;
    }

    public final g h() {
        return this.f30508g;
    }

    public final Integer i() {
        return this.f30503b;
    }
}
