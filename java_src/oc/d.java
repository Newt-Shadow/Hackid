package oc;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ActionBroadcastReceiver;
import dev.fluttercommunity.plus.share.SharePlusPendingIntent;
import gd.k;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.m;
import org.apache.tika.mime.MimeTypes;
import rd.b0;
import rd.y;
import xc.f;
import yc.o;
import yc.w;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27550a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f27551b;

    /* renamed from: c  reason: collision with root package name */
    private final dev.fluttercommunity.plus.share.a f27552c;

    /* renamed from: d  reason: collision with root package name */
    private final xc.d f27553d;

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f27554e;

    public d(Context context, Activity activity, dev.fluttercommunity.plus.share.a manager) {
        xc.d a10;
        xc.d a11;
        m.e(context, "context");
        m.e(manager, "manager");
        this.f27550a = context;
        this.f27551b = activity;
        this.f27552c = manager;
        a10 = f.a(new id.a() { // from class: oc.b
            @Override // id.a
            public final Object invoke() {
                String m10;
                m10 = d.m(d.this);
                return m10;
            }
        });
        this.f27553d = a10;
        a11 = f.a(new id.a() { // from class: oc.c
            @Override // id.a
            public final Object invoke() {
                int l10;
                l10 = d.l();
                return Integer.valueOf(l10);
            }
        });
        this.f27554e = a11;
    }

    private final void c() {
        boolean z10;
        File j10 = j();
        File[] listFiles = j10.listFiles();
        if (j10.exists()) {
            boolean z11 = true;
            if (listFiles != null) {
                if (listFiles.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    z11 = false;
                }
            }
            if (!z11) {
                for (File file : listFiles) {
                    file.delete();
                }
                j10.delete();
            }
        }
    }

    private final File d(File file) {
        File j10 = j();
        if (!j10.exists()) {
            j10.mkdirs();
        }
        File file2 = new File(j10, file.getName());
        k.l(file, file2, true, 0, 4, null);
        return file2;
    }

    private final boolean e(File file) {
        boolean H;
        try {
            String canonicalPath = file.getCanonicalPath();
            m.b(canonicalPath);
            String canonicalPath2 = j().getCanonicalPath();
            m.d(canonicalPath2, "getCanonicalPath(...)");
            H = y.H(canonicalPath, canonicalPath2, false, 2, null);
            return H;
        } catch (IOException unused) {
            return false;
        }
    }

    private final Context f() {
        Activity activity = this.f27551b;
        if (activity != null) {
            m.b(activity);
            return activity;
        }
        return this.f27550a;
    }

    private final int g() {
        return ((Number) this.f27554e.getValue()).intValue();
    }

    private final String h(String str) {
        boolean N;
        int Z;
        if (str != null) {
            N = b0.N(str, "/", false, 2, null);
            if (N) {
                Z = b0.Z(str, "/", 0, false, 6, null);
                String substring = str.substring(0, Z);
                m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring;
            }
        }
        return "*";
    }

    private final String i() {
        return (String) this.f27553d.getValue();
    }

    private final File j() {
        return new File(f().getCacheDir(), "share_plus");
    }

    private final ArrayList k(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = new File((String) it.next());
            if (!e(file)) {
                arrayList.add(androidx.core.content.b.getUriForFile(f(), i(), d(file)));
            } else {
                String canonicalPath = j().getCanonicalPath();
                throw new IOException("Shared file can not be located in '" + canonicalPath + "'");
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l() {
        return 33554432;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String m(d dVar) {
        String packageName = dVar.f().getPackageName();
        return packageName + ".flutter.share_provider";
    }

    private final String n(List list) {
        Object O;
        int j10;
        Object O2;
        boolean z10 = false;
        int i10 = 1;
        if (list != null && !list.isEmpty()) {
            z10 = true;
        }
        if (!z10) {
            return "*/*";
        }
        if (list.size() == 1) {
            O2 = w.O(list);
            return (String) O2;
        }
        O = w.O(list);
        String str = (String) O;
        j10 = o.j(list);
        if (1 <= j10) {
            while (true) {
                if (!m.a(str, list.get(i10))) {
                    if (!m.a(h(str), h((String) list.get(i10)))) {
                        return "*/*";
                    }
                    str = h((String) list.get(i10)) + "/*";
                }
                if (i10 == j10) {
                    break;
                }
                i10++;
            }
        }
        return str;
    }

    private final void r(Intent intent, boolean z10) {
        Activity activity = this.f27551b;
        if (activity != null) {
            if (z10) {
                m.b(activity);
                activity.startActivityForResult(intent, 22643);
                return;
            }
            m.b(activity);
            activity.startActivity(intent);
            return;
        }
        intent.addFlags(268435456);
        if (z10) {
            this.f27552c.d();
        }
        this.f27550a.startActivity(intent);
    }

    public final void o(Activity activity) {
        this.f27551b = activity;
    }

    public final void p(String text, String str, boolean z10) {
        Intent createChooser;
        m.e(text, "text");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(MimeTypes.PLAIN_TEXT);
        intent.putExtra("android.intent.extra.TEXT", text);
        if (str != null) {
            intent.putExtra(ActionBroadcastReceiver.KEY_URL_TITLE, str);
        }
        if (z10) {
            createChooser = Intent.createChooser(intent, null, PendingIntent.getBroadcast(this.f27550a, 0, new Intent(this.f27550a, SharePlusPendingIntent.class), 134217728 | g()).getIntentSender());
        } else {
            createChooser = Intent.createChooser(intent, null);
        }
        m.b(createChooser);
        r(createChooser, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(java.util.List r6, java.util.List r7, java.lang.String r8, java.lang.String r9, boolean r10) {
        /*
            r5 = this;
            java.lang.String r0 = "paths"
            kotlin.jvm.internal.m.e(r6, r0)
            r5.c()
            java.util.ArrayList r6 = r5.k(r6)
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            boolean r1 = r6.isEmpty()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2b
            if (r8 == 0) goto L24
            boolean r1 = rd.n.b0(r8)
            if (r1 == 0) goto L22
            goto L24
        L22:
            r1 = r2
            goto L25
        L24:
            r1 = r3
        L25:
            if (r1 != 0) goto L2b
            r5.p(r8, r9, r10)
            return
        L2b:
            int r1 = r6.size()
            java.lang.String r4 = "android.intent.extra.STREAM"
            if (r1 != r3) goto L5f
            r1 = r7
            java.util.Collection r1 = (java.util.Collection) r1
            if (r1 == 0) goto L41
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L3f
            goto L41
        L3f:
            r1 = r2
            goto L42
        L41:
            r1 = r3
        L42:
            if (r1 != 0) goto L4b
            java.lang.Object r7 = yc.m.O(r7)
            java.lang.String r7 = (java.lang.String) r7
            goto L4d
        L4b:
        */
        //  java.lang.String r7 = "*/*"
        /*
        L4d:
            java.lang.String r1 = "android.intent.action.SEND"
            r0.setAction(r1)
            r0.setType(r7)
            java.lang.Object r7 = yc.m.O(r6)
            android.os.Parcelable r7 = (android.os.Parcelable) r7
            r0.putExtra(r4, r7)
            goto L6e
        L5f:
            java.lang.String r1 = "android.intent.action.SEND_MULTIPLE"
            r0.setAction(r1)
            java.lang.String r7 = r5.n(r7)
            r0.setType(r7)
            r0.putParcelableArrayListExtra(r4, r6)
        L6e:
            if (r8 == 0) goto L75
            java.lang.String r7 = "android.intent.extra.TEXT"
            r0.putExtra(r7, r8)
        L75:
            if (r9 == 0) goto L7c
            java.lang.String r7 = "android.intent.extra.SUBJECT"
            r0.putExtra(r7, r9)
        L7c:
            r0.addFlags(r3)
            r7 = 0
            if (r10 == 0) goto La1
            android.content.Context r8 = r5.f27550a
            android.content.Intent r9 = new android.content.Intent
            android.content.Context r1 = r5.f27550a
            java.lang.Class<dev.fluttercommunity.plus.share.SharePlusPendingIntent> r3 = dev.fluttercommunity.plus.share.SharePlusPendingIntent.class
            r9.<init>(r1, r3)
            r1 = 134217728(0x8000000, float:3.85186E-34)
            int r3 = r5.g()
            r1 = r1 | r3
            android.app.PendingIntent r8 = android.app.PendingIntent.getBroadcast(r8, r2, r9, r1)
            android.content.IntentSender r8 = r8.getIntentSender()
            android.content.Intent r7 = android.content.Intent.createChooser(r0, r7, r8)
            goto La5
        La1:
            android.content.Intent r7 = android.content.Intent.createChooser(r0, r7)
        La5:
            android.content.Context r8 = r5.f()
            android.content.pm.PackageManager r8 = r8.getPackageManager()
            r9 = 65536(0x10000, float:9.18355E-41)
            java.util.List r8 = r8.queryIntentActivities(r7, r9)
            java.lang.String r9 = "queryIntentActivities(...)"
            kotlin.jvm.internal.m.d(r8, r9)
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        Lbe:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Le7
            java.lang.Object r9 = r8.next()
            android.content.pm.ResolveInfo r9 = (android.content.pm.ResolveInfo) r9
            android.content.pm.ActivityInfo r9 = r9.activityInfo
            java.lang.String r9 = r9.packageName
            java.util.Iterator r0 = r6.iterator()
        Ld2:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lbe
            java.lang.Object r1 = r0.next()
            android.net.Uri r1 = (android.net.Uri) r1
            android.content.Context r2 = r5.f()
            r3 = 3
            r2.grantUriPermission(r9, r1, r3)
            goto Ld2
        Le7:
            kotlin.jvm.internal.m.b(r7)
            r5.r(r7, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: oc.d.q(java.util.List, java.util.List, java.lang.String, java.lang.String, boolean):void");
    }
}
