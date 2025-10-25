package d0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Objects;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final f f14325a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final c f14326a;

        public a(ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f14326a = new b(clipData, i10);
            } else {
                this.f14326a = new C0141d(clipData, i10);
            }
        }

        public d a() {
            return this.f14326a.build();
        }

        public a b(Bundle bundle) {
            this.f14326a.a(bundle);
            return this;
        }

        public a c(int i10) {
            this.f14326a.c(i10);
            return this;
        }

        public a d(Uri uri) {
            this.f14326a.b(uri);
            return this;
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ContentInfo.Builder f14327a;

        b(ClipData clipData, int i10) {
            this.f14327a = d0.g.a(clipData, i10);
        }

        @Override // d0.d.c
        public void a(Bundle bundle) {
            this.f14327a.setExtras(bundle);
        }

        @Override // d0.d.c
        public void b(Uri uri) {
            this.f14327a.setLinkUri(uri);
        }

        @Override // d0.d.c
        public d build() {
            ContentInfo build;
            build = this.f14327a.build();
            return new d(new e(build));
        }

        @Override // d0.d.c
        public void c(int i10) {
            this.f14327a.setFlags(i10);
        }
    }

    /* loaded from: classes.dex */
    private interface c {
        void a(Bundle bundle);

        void b(Uri uri);

        d build();

        void c(int i10);
    }

    /* renamed from: d0.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0141d implements c {

        /* renamed from: a  reason: collision with root package name */
        ClipData f14328a;

        /* renamed from: b  reason: collision with root package name */
        int f14329b;

        /* renamed from: c  reason: collision with root package name */
        int f14330c;

        /* renamed from: d  reason: collision with root package name */
        Uri f14331d;

        /* renamed from: e  reason: collision with root package name */
        Bundle f14332e;

        C0141d(ClipData clipData, int i10) {
            this.f14328a = clipData;
            this.f14329b = i10;
        }

        @Override // d0.d.c
        public void a(Bundle bundle) {
            this.f14332e = bundle;
        }

        @Override // d0.d.c
        public void b(Uri uri) {
            this.f14331d = uri;
        }

        @Override // d0.d.c
        public d build() {
            return new d(new g(this));
        }

        @Override // d0.d.c
        public void c(int i10) {
            this.f14330c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e implements f {

        /* renamed from: a  reason: collision with root package name */
        private final ContentInfo f14333a;

        e(ContentInfo contentInfo) {
            this.f14333a = d0.c.a(c0.f.g(contentInfo));
        }

        @Override // d0.d.f
        public ClipData a() {
            ClipData clip;
            clip = this.f14333a.getClip();
            return clip;
        }

        @Override // d0.d.f
        public int b() {
            int flags;
            flags = this.f14333a.getFlags();
            return flags;
        }

        @Override // d0.d.f
        public ContentInfo c() {
            return this.f14333a;
        }

        @Override // d0.d.f
        public int d() {
            int source;
            source = this.f14333a.getSource();
            return source;
        }

        public String toString() {
            return "ContentInfoCompat{" + this.f14333a + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface f {
        ClipData a();

        int b();

        ContentInfo c();

        int d();
    }

    /* loaded from: classes.dex */
    private static final class g implements f {

        /* renamed from: a  reason: collision with root package name */
        private final ClipData f14334a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14335b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14336c;

        /* renamed from: d  reason: collision with root package name */
        private final Uri f14337d;

        /* renamed from: e  reason: collision with root package name */
        private final Bundle f14338e;

        g(C0141d c0141d) {
            this.f14334a = (ClipData) c0.f.g(c0141d.f14328a);
            this.f14335b = c0.f.c(c0141d.f14329b, 0, 5, ClimateForcast.SOURCE);
            this.f14336c = c0.f.f(c0141d.f14330c, 1);
            this.f14337d = c0141d.f14331d;
            this.f14338e = c0141d.f14332e;
        }

        @Override // d0.d.f
        public ClipData a() {
            return this.f14334a;
        }

        @Override // d0.d.f
        public int b() {
            return this.f14336c;
        }

        @Override // d0.d.f
        public ContentInfo c() {
            return null;
        }

        @Override // d0.d.f
        public int d() {
            return this.f14335b;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ContentInfoCompat{clip=");
            sb2.append(this.f14334a.getDescription());
            sb2.append(", source=");
            sb2.append(d.e(this.f14335b));
            sb2.append(", flags=");
            sb2.append(d.a(this.f14336c));
            String str2 = "";
            if (this.f14337d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f14337d.toString().length() + ")";
            }
            sb2.append(str);
            if (this.f14338e != null) {
                str2 = ", hasExtras";
            }
            sb2.append(str2);
            sb2.append("}");
            return sb2.toString();
        }
    }

    d(f fVar) {
        this.f14325a = fVar;
    }

    static String a(int i10) {
        if ((i10 & 1) != 0) {
            return "FLAG_CONVERT_TO_PLAIN_TEXT";
        }
        return String.valueOf(i10);
    }

    static String e(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return String.valueOf(i10);
                            }
                            return "SOURCE_PROCESS_TEXT";
                        }
                        return "SOURCE_AUTOFILL";
                    }
                    return "SOURCE_DRAG_AND_DROP";
                }
                return "SOURCE_INPUT_METHOD";
            }
            return "SOURCE_CLIPBOARD";
        }
        return "SOURCE_APP";
    }

    public static d g(ContentInfo contentInfo) {
        return new d(new e(contentInfo));
    }

    public ClipData b() {
        return this.f14325a.a();
    }

    public int c() {
        return this.f14325a.b();
    }

    public int d() {
        return this.f14325a.d();
    }

    public ContentInfo f() {
        ContentInfo c10 = this.f14325a.c();
        Objects.requireNonNull(c10);
        return d0.c.a(c10);
    }

    public String toString() {
        return this.f14325a.toString();
    }
}
