package bb;

import android.util.Log;
import id.Function2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import org.apache.tika.metadata.ClimateForcast;
import td.i0;
import td.l0;
import td.m0;
import td.v;
import td.x;
import td.z0;
import xc.m;
import xc.q;
import xc.t;
import yc.h0;
import yc.w;
/* loaded from: classes.dex */
public final class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: c  reason: collision with root package name */
    public static final C0076a f4623c = new C0076a(null);

    /* renamed from: a  reason: collision with root package name */
    private FlutterPlugin.FlutterPluginBinding f4624a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f4625b;

    /* renamed from: bb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0076a {
        private C0076a() {
        }

        public /* synthetic */ C0076a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends ZipFile implements Closeable {
        public b(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f4626a;

        /* renamed from: b  reason: collision with root package name */
        Object f4627b;

        /* renamed from: c  reason: collision with root package name */
        Object f4628c;

        /* renamed from: d  reason: collision with root package name */
        Object f4629d;

        /* renamed from: e  reason: collision with root package name */
        Object f4630e;

        /* renamed from: f  reason: collision with root package name */
        Object f4631f;

        /* renamed from: g  reason: collision with root package name */
        Object f4632g;

        /* renamed from: h  reason: collision with root package name */
        Object f4633h;

        /* renamed from: i  reason: collision with root package name */
        boolean f4634i;

        /* renamed from: j  reason: collision with root package name */
        boolean f4635j;

        /* renamed from: k  reason: collision with root package name */
        int f4636k;

        /* renamed from: l  reason: collision with root package name */
        int f4637l;

        /* renamed from: m  reason: collision with root package name */
        int f4638m;

        /* renamed from: n  reason: collision with root package name */
        int f4639n;

        /* renamed from: o  reason: collision with root package name */
        /* synthetic */ Object f4640o;

        /* renamed from: q  reason: collision with root package name */
        int f4642q;

        c(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f4640o = obj;
            this.f4642q |= Integer.MIN_VALUE;
            return a.this.g(null, null, null, false, false, 0, 0, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4643a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ZipOutputStream f4644b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ZipEntry f4645c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(ZipOutputStream zipOutputStream, ZipEntry zipEntry, ad.e eVar) {
            super(2, eVar);
            this.f4644b = zipOutputStream;
            this.f4645c = zipEntry;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new d(this.f4644b, this.f4645c, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f4643a == 0) {
                m.b(obj);
                this.f4644b.putNextEntry(this.f4645c);
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((d) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f4646a;

        /* renamed from: b  reason: collision with root package name */
        Object f4647b;

        /* renamed from: c  reason: collision with root package name */
        Object f4648c;

        /* renamed from: d  reason: collision with root package name */
        Object f4649d;

        /* renamed from: e  reason: collision with root package name */
        int f4650e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ File f4651f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f4652g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ boolean f4653h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ a0 f4654i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f4655j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a f4656k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ int f4657l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ ZipOutputStream f4658m;

        /* renamed from: bb.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public /* synthetic */ class C0077a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f4659a;

            static {
                int[] iArr = new int[bb.b.values().length];
                try {
                    iArr[bb.b.f4727a.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[bb.b.f4729c.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f4659a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(File file, String str, boolean z10, a0 a0Var, int i10, a aVar, int i11, ZipOutputStream zipOutputStream, ad.e eVar) {
            super(2, eVar);
            this.f4651f = file;
            this.f4652g = str;
            this.f4653h = z10;
            this.f4654i = a0Var;
            this.f4655j = i10;
            this.f4656k = aVar;
            this.f4657l = i11;
            this.f4658m = zipOutputStream;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new e(this.f4651f, this.f4652g, this.f4653h, this.f4654i, this.f4655j, this.f4656k, this.f4657l, this.f4658m, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v9, types: [java.io.Closeable] */
        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            FileInputStream fileInputStream;
            Throwable th;
            FileInputStream fileInputStream2;
            Throwable th2;
            Object d10;
            Object k10;
            ZipEntry zipEntry;
            FileInputStream fileInputStream3;
            ZipOutputStream zipOutputStream;
            e10 = bd.d.e();
            int i10 = this.f4650e;
            if (i10 != 0) {
                if (i10 == 1) {
                    zipEntry = (ZipEntry) this.f4649d;
                    FileInputStream fileInputStream4 = (FileInputStream) this.f4648c;
                    zipOutputStream = (ZipOutputStream) this.f4647b;
                    ?? r32 = (Closeable) this.f4646a;
                    try {
                        m.b(obj);
                        fileInputStream = fileInputStream4;
                        k10 = obj;
                        fileInputStream3 = r32;
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream2 = r32;
                        try {
                            throw th;
                        } finally {
                            gd.b.a(fileInputStream2, th);
                        }
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                fileInputStream = new FileInputStream(this.f4651f);
                String str = this.f4652g;
                File file = this.f4651f;
                boolean z10 = this.f4653h;
                a0 a0Var = this.f4654i;
                int i11 = this.f4655j;
                a aVar = this.f4656k;
                int i12 = this.f4657l;
                ZipOutputStream zipOutputStream2 = this.f4658m;
                try {
                    ZipEntry zipEntry2 = new ZipEntry(str);
                    zipEntry2.setTime(file.lastModified());
                    zipEntry2.setSize(file.length());
                    if (z10) {
                        Log.d("FlutterArchivePlugin", "Waiting reportProgress...");
                        this.f4646a = fileInputStream;
                        this.f4647b = zipOutputStream2;
                        this.f4648c = fileInputStream;
                        this.f4649d = zipEntry2;
                        this.f4650e = 1;
                        k10 = aVar.k(i12, zipEntry2, (a0Var.f24967a / i11) * 100.0d, this);
                        if (k10 == e10) {
                            return e10;
                        }
                        zipEntry = zipEntry2;
                        fileInputStream3 = fileInputStream;
                        zipOutputStream = zipOutputStream2;
                    } else {
                        zipOutputStream2.putNextEntry(zipEntry2);
                        th2 = null;
                        d10 = kotlin.coroutines.jvm.internal.b.d(gd.a.b(fileInputStream, zipOutputStream2, 0, 2, null));
                        return d10;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream2 = fileInputStream;
                    throw th;
                }
            }
            bb.b bVar = (bb.b) k10;
            Log.d("FlutterArchivePlugin", "...reportProgress: " + bVar);
            int i13 = C0077a.f4659a[bVar.ordinal()];
            if (i13 != 1) {
                if (i13 != 2) {
                    d10 = t.f32733a;
                } else {
                    throw new CancellationException("Operation cancelled");
                }
            } else {
                zipOutputStream.putNextEntry(zipEntry);
                d10 = kotlin.coroutines.jvm.internal.b.d(gd.a.b(fileInputStream, zipOutputStream, 0, 2, null));
            }
            fileInputStream = fileInputStream3;
            th2 = null;
            return d10;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((e) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    static final class f extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4660a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MethodCall f4661b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f4662c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f4663d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: bb.a$f$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0078a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f4664a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f4665b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f4666c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f4667d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ boolean f4668e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ boolean f4669f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Boolean f4670g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ Integer f4671h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0078a(a aVar, String str, String str2, boolean z10, boolean z11, Boolean bool, Integer num, ad.e eVar) {
                super(2, eVar);
                this.f4665b = aVar;
                this.f4666c = str;
                this.f4667d = str2;
                this.f4668e = z10;
                this.f4669f = z11;
                this.f4670g = bool;
                this.f4671h = num;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new C0078a(this.f4665b, this.f4666c, this.f4667d, this.f4668e, this.f4669f, this.f4670g, this.f4671h, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f4664a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    a aVar = this.f4665b;
                    String str = this.f4666c;
                    kotlin.jvm.internal.m.b(str);
                    String str2 = this.f4667d;
                    kotlin.jvm.internal.m.b(str2);
                    boolean z10 = this.f4668e;
                    boolean z11 = this.f4669f;
                    boolean a10 = kotlin.jvm.internal.m.a(this.f4670g, kotlin.coroutines.jvm.internal.b.a(true));
                    Integer num = this.f4671h;
                    kotlin.jvm.internal.m.b(num);
                    int intValue = num.intValue();
                    this.f4664a = 1;
                    if (aVar.m(str, str2, z10, z11, a10, intValue, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((C0078a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(MethodCall methodCall, MethodChannel.Result result, a aVar, ad.e eVar) {
            super(2, eVar);
            this.f4661b = methodCall;
            this.f4662c = result;
            this.f4663d = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new f(this.f4661b, this.f4662c, this.f4663d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            boolean z10;
            e10 = bd.d.e();
            int i10 = this.f4660a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    String str = (String) this.f4661b.argument("sourceDir");
                    String str2 = (String) this.f4661b.argument("zipFile");
                    boolean a10 = kotlin.jvm.internal.m.a(this.f4661b.argument("recurseSubDirs"), kotlin.coroutines.jvm.internal.b.a(true));
                    boolean a11 = kotlin.jvm.internal.m.a(this.f4661b.argument("includeBaseDirectory"), kotlin.coroutines.jvm.internal.b.a(true));
                    Boolean bool = (Boolean) this.f4661b.argument("reportProgress");
                    Integer num = (Integer) this.f4661b.argument("jobId");
                    i0 b10 = z0.b();
                    a aVar = this.f4663d;
                    if (a11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    C0078a c0078a = new C0078a(aVar, str, str2, a10, z10, bool, num, null);
                    this.f4660a = 1;
                    if (td.g.g(b10, c0078a, this) == e10) {
                        return e10;
                    }
                }
                this.f4662c.success(kotlin.coroutines.jvm.internal.b.a(true));
            } catch (Exception e11) {
                e11.printStackTrace();
                this.f4662c.error("zip_error", e11.getLocalizedMessage(), e11.toString());
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((f) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    static final class g extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4672a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MethodCall f4673b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f4674c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f4675d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: bb.a$g$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0079a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f4676a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f4677b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f4678c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ List f4679d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f4680e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ boolean f4681f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0079a(a aVar, String str, List list, String str2, boolean z10, ad.e eVar) {
                super(2, eVar);
                this.f4677b = aVar;
                this.f4678c = str;
                this.f4679d = list;
                this.f4680e = str2;
                this.f4681f = z10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new C0079a(this.f4677b, this.f4678c, this.f4679d, this.f4680e, this.f4681f, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.d.e();
                if (this.f4676a == 0) {
                    m.b(obj);
                    a aVar = this.f4677b;
                    String str = this.f4678c;
                    kotlin.jvm.internal.m.b(str);
                    List list = this.f4679d;
                    kotlin.jvm.internal.m.b(list);
                    String str2 = this.f4680e;
                    kotlin.jvm.internal.m.b(str2);
                    aVar.o(str, list, str2, this.f4681f);
                    return t.f32733a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((C0079a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(MethodCall methodCall, MethodChannel.Result result, a aVar, ad.e eVar) {
            super(2, eVar);
            this.f4673b = methodCall;
            this.f4674c = result;
            this.f4675d = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new g(this.f4673b, this.f4674c, this.f4675d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            boolean z10;
            e10 = bd.d.e();
            int i10 = this.f4672a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    String str = (String) this.f4673b.argument("sourceDir");
                    List list = (List) this.f4673b.argument("files");
                    String str2 = (String) this.f4673b.argument("zipFile");
                    boolean a10 = kotlin.jvm.internal.m.a(this.f4673b.argument("includeBaseDirectory"), kotlin.coroutines.jvm.internal.b.a(true));
                    i0 b10 = z0.b();
                    a aVar = this.f4675d;
                    if (a10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    C0079a c0079a = new C0079a(aVar, str, list, str2, z10, null);
                    this.f4672a = 1;
                    if (td.g.g(b10, c0079a, this) == e10) {
                        return e10;
                    }
                }
                this.f4674c.success(kotlin.coroutines.jvm.internal.b.a(true));
            } catch (Exception e11) {
                e11.printStackTrace();
                this.f4674c.error("zip_error", e11.getLocalizedMessage(), e11.toString());
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((g) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    static final class h extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4682a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MethodCall f4683b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f4684c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f4685d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: bb.a$h$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0080a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f4686a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f4687b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f4688c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Charset f4689d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f4690e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Boolean f4691f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Integer f4692g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0080a(a aVar, String str, Charset charset, String str2, Boolean bool, Integer num, ad.e eVar) {
                super(2, eVar);
                this.f4687b = aVar;
                this.f4688c = str;
                this.f4689d = charset;
                this.f4690e = str2;
                this.f4691f = bool;
                this.f4692g = num;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new C0080a(this.f4687b, this.f4688c, this.f4689d, this.f4690e, this.f4691f, this.f4692g, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f4686a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    a aVar = this.f4687b;
                    String str = this.f4688c;
                    kotlin.jvm.internal.m.b(str);
                    Charset charset = this.f4689d;
                    String str2 = this.f4690e;
                    kotlin.jvm.internal.m.b(str2);
                    boolean a10 = kotlin.jvm.internal.m.a(this.f4691f, kotlin.coroutines.jvm.internal.b.a(true));
                    Integer num = this.f4692g;
                    kotlin.jvm.internal.m.b(num);
                    int intValue = num.intValue();
                    this.f4686a = 1;
                    if (aVar.l(str, charset, str2, a10, intValue, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((C0080a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(MethodCall methodCall, MethodChannel.Result result, a aVar, ad.e eVar) {
            super(2, eVar);
            this.f4683b = methodCall;
            this.f4684c = result;
            this.f4685d = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new h(this.f4683b, this.f4684c, this.f4685d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            Charset charset;
            e10 = bd.d.e();
            int i10 = this.f4682a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    String str = (String) this.f4683b.argument("zipFile");
                    String str2 = (String) this.f4683b.argument("zipFileCharset");
                    String str3 = (String) this.f4683b.argument("destinationDir");
                    Boolean bool = (Boolean) this.f4683b.argument("reportProgress");
                    Integer num = (Integer) this.f4683b.argument("jobId");
                    if (str2 != null) {
                        charset = Charset.forName(str2);
                    } else {
                        charset = null;
                    }
                    Charset charset2 = charset;
                    Log.d("FlutterArchivePlugin", "onMethodCall / unzip...");
                    i0 b10 = z0.b();
                    C0080a c0080a = new C0080a(this.f4685d, str, charset2, str3, bool, num, null);
                    this.f4682a = 1;
                    if (td.g.g(b10, c0080a, this) == e10) {
                        return e10;
                    }
                }
                Log.d("FlutterArchivePlugin", "...onMethodCall / unzip");
                this.f4684c.success(kotlin.coroutines.jvm.internal.b.a(true));
            } catch (Exception e11) {
                e11.printStackTrace();
                this.f4684c.error("unzip_error", e11.getLocalizedMessage(), e11.toString());
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((h) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class i extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4693a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f4695c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ v f4696d;

        /* renamed from: bb.a$i$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0081a implements MethodChannel.Result {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ v f4697a;

            C0081a(v vVar) {
                this.f4697a = vVar;
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String code, String str, Object obj) {
                kotlin.jvm.internal.m.e(code, "code");
                Log.e("FlutterArchivePlugin", "invokeMethod - error: " + str);
                this.f4697a.H(bb.b.f4727a);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                Log.e("FlutterArchivePlugin", "invokeMethod - notImplemented");
                this.f4697a.H(bb.b.f4727a);
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Log.i("FlutterArchivePlugin", "invokeMethod - success: " + obj);
                if (kotlin.jvm.internal.m.a(obj, "cancel")) {
                    this.f4697a.H(bb.b.f4729c);
                } else if (kotlin.jvm.internal.m.a(obj, "skipItem")) {
                    this.f4697a.H(bb.b.f4728b);
                } else {
                    this.f4697a.H(bb.b.f4727a);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Map map, v vVar, ad.e eVar) {
            super(2, eVar);
            this.f4695c = map;
            this.f4696d = vVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new i(this.f4695c, this.f4696d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f4693a == 0) {
                m.b(obj);
                MethodChannel methodChannel = a.this.f4625b;
                if (methodChannel != null) {
                    methodChannel.invokeMethod("progress", this.f4695c, new C0081a(this.f4696d));
                }
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((i) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class j extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f4698a;

        /* renamed from: b  reason: collision with root package name */
        Object f4699b;

        /* renamed from: c  reason: collision with root package name */
        Object f4700c;

        /* renamed from: d  reason: collision with root package name */
        Object f4701d;

        /* renamed from: e  reason: collision with root package name */
        Object f4702e;

        /* renamed from: f  reason: collision with root package name */
        Object f4703f;

        /* renamed from: g  reason: collision with root package name */
        Object f4704g;

        /* renamed from: h  reason: collision with root package name */
        Object f4705h;

        /* renamed from: i  reason: collision with root package name */
        boolean f4706i;

        /* renamed from: j  reason: collision with root package name */
        int f4707j;

        /* renamed from: k  reason: collision with root package name */
        double f4708k;

        /* renamed from: l  reason: collision with root package name */
        double f4709l;

        /* renamed from: m  reason: collision with root package name */
        /* synthetic */ Object f4710m;

        /* renamed from: o  reason: collision with root package name */
        int f4712o;

        j(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f4710m = obj;
            this.f4712o |= Integer.MIN_VALUE;
            return a.this.l(null, null, null, false, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class k extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f4713a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ZipFile f4714b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ZipEntry f4715c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ File f4716d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(ZipFile zipFile, ZipEntry zipEntry, File file, ad.e eVar) {
            super(2, eVar);
            this.f4714b = zipFile;
            this.f4715c = zipEntry;
            this.f4716d = file;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new k(this.f4714b, this.f4715c, this.f4716d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f4713a == 0) {
                m.b(obj);
                InputStream inputStream = this.f4714b.getInputStream(this.f4715c);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f4716d);
                    kotlin.jvm.internal.m.b(inputStream);
                    long b10 = gd.a.b(inputStream, fileOutputStream, 0, 2, null);
                    gd.b.a(fileOutputStream, null);
                    Long d10 = kotlin.coroutines.jvm.internal.b.d(b10);
                    gd.b.a(inputStream, null);
                    return d10;
                } finally {
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((k) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class l extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f4717a;

        /* renamed from: b  reason: collision with root package name */
        int f4718b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f4719c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f4720d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ File f4721e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f4722f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f4723g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ boolean f4724h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ int f4725i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f4726j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, a aVar, File file, String str2, boolean z10, boolean z11, int i10, int i11, ad.e eVar) {
            super(2, eVar);
            this.f4719c = str;
            this.f4720d = aVar;
            this.f4721e = file;
            this.f4722f = str2;
            this.f4723g = z10;
            this.f4724h = z11;
            this.f4725i = i10;
            this.f4726j = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new l(this.f4719c, this.f4720d, this.f4721e, this.f4722f, this.f4723g, this.f4724h, this.f4725i, this.f4726j, eVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            ZipOutputStream zipOutputStream;
            Throwable th;
            boolean z10;
            e10 = bd.d.e();
            int i10 = this.f4718b;
            if (i10 != 0) {
                if (i10 == 1) {
                    zipOutputStream = (Closeable) this.f4717a;
                    try {
                        m.b(obj);
                        zipOutputStream = zipOutputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            gd.b.a(zipOutputStream, th);
                            throw th3;
                        }
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(this.f4719c)));
                a aVar = this.f4720d;
                File file = this.f4721e;
                String str = this.f4722f;
                boolean z11 = this.f4723g;
                boolean z12 = this.f4724h;
                int i11 = this.f4725i;
                int i12 = this.f4726j;
                try {
                    kotlin.jvm.internal.m.b(file);
                    if (z12) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f4717a = zipOutputStream2;
                    this.f4718b = 1;
                    Object g10 = aVar.g(zipOutputStream2, file, str, z11, z10, i11, i12, 0, this);
                    if (g10 == e10) {
                        return e10;
                    }
                    zipOutputStream = zipOutputStream2;
                    obj = g10;
                } catch (Throwable th4) {
                    zipOutputStream = zipOutputStream2;
                    th = th4;
                    throw th;
                }
            }
            Integer c10 = kotlin.coroutines.jvm.internal.b.c(((Number) obj).intValue());
            gd.b.a(zipOutputStream, null);
            return c10;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((l) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02dd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x031d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x03d5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0188 -> B:59:0x03ce). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0248 -> B:59:0x03ce). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x032c -> B:15:0x0060). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x03a4 -> B:58:0x03b8). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(java.util.zip.ZipOutputStream r33, java.io.File r34, java.lang.String r35, boolean r36, boolean r37, int r38, int r39, int r40, ad.e r41) {
        /*
            Method dump skipped, instructions count: 988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bb.a.g(java.util.zip.ZipOutputStream, java.io.File, java.lang.String, boolean, boolean, int, int, int, ad.e):java.lang.Object");
    }

    private final void h(BinaryMessenger binaryMessenger) {
        Log.d("FlutterArchivePlugin", "doOnAttachedToEngine - IN");
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "flutter_archive");
        this.f4625b = methodChannel;
        methodChannel.setMethodCallHandler(this);
        Log.d("FlutterArchivePlugin", "doOnAttachedToEngine - OUT");
    }

    private final void i() {
        Log.d("FlutterArchivePlugin", "doOnDetachedFromEngine - IN");
        if (this.f4624a == null) {
            Log.w("FlutterArchivePlugin", "doOnDetachedFromEngine - already detached");
        }
        this.f4624a = null;
        MethodChannel methodChannel = this.f4625b;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f4625b = null;
        Log.d("FlutterArchivePlugin", "doOnDetachedFromEngine - OUT");
    }

    private final int j(File file, boolean z10) {
        File[] listFiles = file.listFiles();
        int i10 = 0;
        if (listFiles != null) {
            Iterator a10 = kotlin.jvm.internal.c.a(listFiles);
            while (a10.hasNext()) {
                File file2 = (File) a10.next();
                if (z10 && file2.isDirectory()) {
                    kotlin.jvm.internal.m.b(file2);
                    i10 += j(file2, z10);
                } else {
                    i10++;
                }
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object k(int i10, ZipEntry zipEntry, double d10, ad.e eVar) {
        Map s10;
        s10 = h0.s(n(zipEntry));
        s10.put("jobId", kotlin.coroutines.jvm.internal.b.c(i10));
        s10.put("progress", kotlin.coroutines.jvm.internal.b.b(d10));
        v b10 = x.b(null, 1, null);
        td.i.d(m0.a(z0.c()), null, null, new i(s10, b10, null), 3, null);
        return b10.w(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0141 A[Catch: all -> 0x0383, TRY_LEAVE, TryCatch #1 {all -> 0x0383, blocks: (B:28:0x013b, B:30:0x0141), top: B:88:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0243 A[Catch: all -> 0x0260, TRY_LEAVE, TryCatch #0 {all -> 0x0260, blocks: (B:32:0x01a9, B:35:0x01b1, B:42:0x0217, B:45:0x0243, B:74:0x0344, B:75:0x0377), top: B:86:0x01a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x028c A[Catch: all -> 0x033e, TRY_ENTER, TryCatch #5 {all -> 0x033e, blocks: (B:54:0x0282, B:57:0x028c, B:58:0x02b1, B:60:0x02b7, B:62:0x02bd, B:64:0x02db), top: B:96:0x0282 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02b1 A[Catch: all -> 0x033e, TryCatch #5 {all -> 0x033e, blocks: (B:54:0x0282, B:57:0x028c, B:58:0x02b1, B:60:0x02b7, B:62:0x02bd, B:64:0x02db), top: B:96:0x0282 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0378  */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r15v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r8v21, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0235 -> B:70:0x033a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x032a -> B:69:0x0337). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(java.lang.String r29, java.nio.charset.Charset r30, java.lang.String r31, boolean r32, int r33, ad.e r34) {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bb.a.l(java.lang.String, java.nio.charset.Charset, java.lang.String, boolean, int, ad.e):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object m(String str, String str2, boolean z10, boolean z11, boolean z12, int i10, ad.e eVar) {
        File file;
        int i11;
        Object e10;
        Log.i("zip", "sourceDirPath: " + str + ", zipFilePath: " + str2 + ", recurseSubDirs: " + z10 + ", includeBaseDirectory: " + z11);
        if (z11) {
            file = new File(str).getParentFile();
        } else {
            file = new File(str);
        }
        File file2 = file;
        if (z12) {
            kotlin.jvm.internal.m.b(file2);
            i11 = j(file2, z10);
        } else {
            i11 = 0;
        }
        Object g10 = td.g.g(z0.b(), new l(str2, this, file2, str, z10, z12, i10, i11, null), eVar);
        e10 = bd.d.e();
        if (g10 == e10) {
            return g10;
        }
        return t.f32733a;
    }

    private final Map n(ZipEntry zipEntry) {
        String str;
        Map h10;
        xc.k[] kVarArr = new xc.k[8];
        kVarArr[0] = q.a(Constants.NAME, zipEntry.getName());
        kVarArr[1] = q.a("isDirectory", Boolean.valueOf(zipEntry.isDirectory()));
        kVarArr[2] = q.a(ClimateForcast.COMMENT, zipEntry.getComment());
        kVarArr[3] = q.a("modificationDate", Long.valueOf(zipEntry.getTime()));
        kVarArr[4] = q.a("uncompressedSize", Long.valueOf(zipEntry.getSize()));
        kVarArr[5] = q.a("compressedSize", Long.valueOf(zipEntry.getCompressedSize()));
        kVarArr[6] = q.a("crc", Long.valueOf(zipEntry.getCrc()));
        if (zipEntry.getMethod() == 8) {
            str = "deflated";
        } else {
            str = "none";
        }
        kVarArr[7] = q.a("compressionMethod", str);
        h10 = h0.h(kVarArr);
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, List list, String str2, boolean z10) {
        String X;
        File file;
        File s10;
        File q10;
        Log.i("zip", "sourceDirPath: " + str + ", zipFilePath: " + str2 + ", includeBaseDirectory: " + z10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Files: ");
        X = w.X(list, StringUtils.COMMA, null, null, 0, null, null, 62, null);
        sb2.append(X);
        Log.i("zip", sb2.toString());
        if (z10) {
            file = new File(str).getParentFile();
        } else {
            file = new File(str);
        }
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                kotlin.jvm.internal.m.b(file);
                s10 = gd.k.s(file, (String) it.next());
                q10 = gd.k.q(s10, file);
                String path = q10.getPath();
                Log.i("zip", "Adding file: " + path);
                FileInputStream fileInputStream = new FileInputStream(s10);
                ZipEntry zipEntry = new ZipEntry(path);
                zipEntry.setTime(s10.lastModified());
                zipEntry.setSize(s10.length());
                zipOutputStream.putNextEntry(zipEntry);
                gd.a.b(fileInputStream, zipOutputStream, 0, 2, null);
                gd.b.a(fileInputStream, null);
            }
            t tVar = t.f32733a;
            gd.b.a(zipOutputStream, null);
        } finally {
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        BinaryMessenger binaryMessenger;
        kotlin.jvm.internal.m.e(binding, "binding");
        Log.d("FlutterArchivePlugin", "onAttachedToEngine - IN");
        if (this.f4624a != null) {
            Log.w("FlutterArchivePlugin", "onAttachedToEngine - already attached");
        }
        this.f4624a = binding;
        if (binding != null) {
            binaryMessenger = binding.getBinaryMessenger();
        } else {
            binaryMessenger = null;
        }
        kotlin.jvm.internal.m.b(binaryMessenger);
        h(binaryMessenger);
        Log.d("FlutterArchivePlugin", "onAttachedToEngine - OUT");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        Log.d("FlutterArchivePlugin", "onDetachedFromEngine");
        i();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        kotlin.jvm.internal.m.e(call, "call");
        kotlin.jvm.internal.m.e(result, "result");
        l0 a10 = m0.a(z0.c());
        String str = call.method;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -626402228) {
                if (hashCode != -152551466) {
                    if (hashCode == 111449576 && str.equals("unzip")) {
                        td.i.d(a10, null, null, new h(call, result, this, null), 3, null);
                        return;
                    }
                } else if (str.equals("zipFiles")) {
                    td.i.d(a10, null, null, new g(call, result, this, null), 3, null);
                    return;
                }
            } else if (str.equals("zipDirectory")) {
                td.i.d(a10, null, null, new f(call, result, this, null), 3, null);
                return;
            }
        }
        result.notImplemented();
        t tVar = t.f32733a;
    }
}
