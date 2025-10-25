package g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import g.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import yc.w;
/* loaded from: classes.dex */
public class f extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f16074a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ResolveInfo a(Context context) {
            m.e(context, "context");
            return context.getPackageManager().resolveActivity(new Intent("androidx.activity.result.contract.action.PICK_IMAGES"), 1114112);
        }

        public final String b(InterfaceC0171f input) {
            m.e(input, "input");
            if (input instanceof d) {
                return "image/*";
            }
            if (input instanceof e) {
                return "video/*";
            }
            if (input instanceof c) {
                return null;
            }
            throw new xc.i();
        }

        public final boolean c(Context context) {
            m.e(context, "context");
            if (a(context) != null) {
                return true;
            }
            return false;
        }

        public final boolean d() {
            int extensionVersion;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 33) {
                return true;
            }
            if (i10 >= 30) {
                extensionVersion = SdkExtensions.getExtensionVersion(30);
                if (extensionVersion >= 2) {
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* loaded from: classes.dex */
        public static final class a extends b {

            /* renamed from: a  reason: collision with root package name */
            public static final a f16075a = new a();

            /* renamed from: b  reason: collision with root package name */
            private static final int f16076b = 1;

            private a() {
                super(null);
            }

            @Override // g.f.b
            public int a() {
                return f16076b;
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract int a();
    }

    /* loaded from: classes.dex */
    public static final class c implements InterfaceC0171f {

        /* renamed from: a  reason: collision with root package name */
        public static final c f16077a = new c();

        private c() {
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements InterfaceC0171f {

        /* renamed from: a  reason: collision with root package name */
        public static final d f16078a = new d();

        private d() {
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements InterfaceC0171f {

        /* renamed from: a  reason: collision with root package name */
        public static final e f16079a = new e();

        private e() {
        }
    }

    /* renamed from: g.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0171f {
    }

    public static final boolean f() {
        return f16074a.d();
    }

    @Override // g.a
    /* renamed from: d */
    public Intent a(Context context, f.h input) {
        m.e(context, "context");
        m.e(input, "input");
        a aVar = f16074a;
        if (aVar.d()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(aVar.b(input.d()));
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
            if (input.e()) {
                intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
                return intent;
            }
            return intent;
        } else if (aVar.c(context)) {
            ResolveInfo a10 = aVar.a(context);
            if (a10 != null) {
                ActivityInfo activityInfo = a10.activityInfo;
                Intent intent2 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
                intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent2.setType(aVar.b(input.d()));
                intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", input.b().a());
                if (input.e()) {
                    intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR", input.a());
                }
                return intent2;
            }
            throw new IllegalStateException("Required value was null.".toString());
        } else {
            Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent3.setType(aVar.b(input.d()));
            if (intent3.getType() == null) {
                intent3.setType("*/*");
                intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                return intent3;
            }
            return intent3;
        }
    }

    @Override // g.a
    /* renamed from: e */
    public final a.C0170a b(Context context, f.h input) {
        m.e(context, "context");
        m.e(input, "input");
        return null;
    }

    @Override // g.a
    /* renamed from: g */
    public final Uri c(int i10, Intent intent) {
        boolean z10;
        Object Q;
        if (i10 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        if (data == null) {
            Q = w.Q(g.b.f16071a.a(intent));
            data = (Uri) Q;
        }
        return data;
    }
}
