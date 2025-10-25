package cb;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.provider.DocumentsContract;
import android.util.Log;
import android.webkit.MimeTypeMap;
import cb.a;
import id.Function2;
import io.flutter.plugin.common.MethodChannel;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import kotlin.coroutines.jvm.internal.k;
import org.apache.tika.Tika;
import org.apache.tika.detect.Detector;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import rd.b0;
import rd.l;
import rd.y;
import td.l0;
import td.m0;
import td.z0;
import xc.m;
import xc.t;
import yc.o;
import yc.w;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f5148a = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f5149a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Intent f5150b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f5151c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Activity f5152d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f5153e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f5154f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f5155g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Intent intent, c cVar, Activity activity, int i10, boolean z10, String str, ad.e eVar) {
            super(2, eVar);
            this.f5150b = intent;
            this.f5151c = cVar;
            this.f5152d = activity;
            this.f5153e = i10;
            this.f5154f = z10;
            this.f5155g = str;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new a(this.f5150b, this.f5151c, this.f5152d, this.f5153e, this.f5154f, this.f5155g, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f5149a == 0) {
                m.b(obj);
                if (this.f5150b == null) {
                    this.f5151c.g("unknown_activity", "Unknown activity error, please fill an issue.");
                    return t.f32733a;
                }
                ArrayList arrayList = new ArrayList();
                int i10 = 0;
                if (this.f5150b.getClipData() != null) {
                    ClipData clipData = this.f5150b.getClipData();
                    kotlin.jvm.internal.m.b(clipData);
                    int itemCount = clipData.getItemCount();
                    while (i10 < itemCount) {
                        ClipData clipData2 = this.f5150b.getClipData();
                        kotlin.jvm.internal.m.b(clipData2);
                        Uri uri = clipData2.getItemAt(i10).getUri();
                        f fVar = f.f5148a;
                        Activity activity = this.f5152d;
                        kotlin.jvm.internal.m.b(uri);
                        fVar.e(this.f5152d, fVar.y(activity, uri, this.f5153e), this.f5154f, arrayList);
                        i10++;
                    }
                    this.f5151c.h(arrayList);
                } else if (this.f5150b.getData() != null) {
                    f fVar2 = f.f5148a;
                    Activity activity2 = this.f5152d;
                    Uri data = this.f5150b.getData();
                    kotlin.jvm.internal.m.b(data);
                    Uri y10 = fVar2.y(activity2, data, this.f5153e);
                    if (!kotlin.jvm.internal.m.a(this.f5155g, "dir")) {
                        fVar2.e(this.f5152d, y10, this.f5154f, arrayList);
                        fVar2.s(this.f5151c, arrayList);
                    } else {
                        String n10 = f.n(DocumentsContract.buildDocumentUriUsingTree(y10, DocumentsContract.getTreeDocumentId(y10)), this.f5152d);
                        if (n10 != null) {
                            this.f5151c.h(n10);
                        } else {
                            this.f5151c.g("unknown_path", "Failed to retrieve directory path.");
                        }
                    }
                } else {
                    Bundle extras = this.f5150b.getExtras();
                    if (extras != null && extras.containsKey("selectedItems")) {
                        i10 = 1;
                    }
                    if (i10 != 0) {
                        f fVar3 = f.f5148a;
                        Bundle extras2 = this.f5150b.getExtras();
                        kotlin.jvm.internal.m.b(extras2);
                        ArrayList r10 = fVar3.r(extras2);
                        if (r10 != null) {
                            ArrayList<Uri> arrayList2 = new ArrayList();
                            for (Object obj2 : r10) {
                                if (obj2 instanceof Uri) {
                                    arrayList2.add(obj2);
                                }
                            }
                            Activity activity3 = this.f5152d;
                            boolean z10 = this.f5154f;
                            for (Uri uri2 : arrayList2) {
                                f.f5148a.e(activity3, uri2, z10, arrayList);
                            }
                        }
                        this.f5151c.h(arrayList);
                    } else {
                        this.f5151c.g("unknown_activity", "Unknown activity error, please fill an issue.");
                    }
                }
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(Activity activity, Uri uri, boolean z10, List list) {
        cb.a w10 = w(activity, uri, z10);
        if (w10 != null) {
            list.add(w10);
        }
    }

    public static final boolean f(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        try {
            f5148a.z(new File(context.getCacheDir() + "/file_picker/"));
            return true;
        } catch (Exception e10) {
            Log.e("FilePickerUtils", "There was an error while clearing cached files: " + e10);
            return false;
        }
    }

    public static final Uri g(Uri originalImageUri, int i10, Context context) {
        kotlin.jvm.internal.m.e(originalImageUri, "originalImageUri");
        kotlin.jvm.internal.m.e(context, "context");
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(originalImageUri);
            f fVar = f5148a;
            File h10 = fVar.h(context, originalImageUri);
            Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream);
            FileOutputStream fileOutputStream = new FileOutputStream(h10);
            decodeStream.compress(fVar.i(context, originalImageUri), i10, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            Uri fromFile = Uri.fromFile(h10);
            t tVar = t.f32733a;
            gd.b.a(openInputStream, null);
            return fromFile;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    private final File h(Context context, Uri uri) {
        File createTempFile = File.createTempFile("IMAGE_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()) + '_', '.' + k(context, uri), context.getCacheDir());
        kotlin.jvm.internal.m.d(createTempFile, "createTempFile(...)");
        return createTempFile;
    }

    private final Bitmap.CompressFormat i(Context context, Uri uri) {
        String k10 = k(context, uri);
        kotlin.jvm.internal.m.b(k10);
        Locale locale = Locale.getDefault();
        kotlin.jvm.internal.m.d(locale, "getDefault(...)");
        String upperCase = k10.toUpperCase(locale);
        kotlin.jvm.internal.m.d(upperCase, "toUpperCase(...)");
        if (kotlin.jvm.internal.m.a(upperCase, "PNG")) {
            return Bitmap.CompressFormat.PNG;
        }
        if (kotlin.jvm.internal.m.a(upperCase, "WEBP")) {
            return Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    private final String j(Uri uri) {
        List h10;
        boolean z10;
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        kotlin.jvm.internal.m.b(treeDocumentId);
        List g10 = new l(":").g(treeDocumentId, 0);
        if (!g10.isEmpty()) {
            ListIterator listIterator = g10.listIterator(g10.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() == 0) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (!z10) {
                    h10 = w.i0(g10, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        h10 = o.h();
        String[] strArr = (String[]) h10.toArray(new String[0]);
        if (strArr.length >= 2) {
            return strArr[1];
        }
        String separator = File.separator;
        kotlin.jvm.internal.m.d(separator, "separator");
        return separator;
    }

    private final String k(Context context, Uri uri) {
        return MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri));
    }

    public static final String m(Uri uri, Context context) {
        String str;
        kotlin.jvm.internal.m.e(uri, "uri");
        kotlin.jvm.internal.m.e(context, "context");
        String str2 = null;
        try {
            if (kotlin.jvm.internal.m.a(uri.getScheme(), "content")) {
                Cursor query = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
                try {
                    Cursor cursor = query;
                    if (cursor != null && cursor.moveToFirst()) {
                        str = cursor.getString(cursor.getColumnIndexOrThrow("_display_name"));
                    } else {
                        str = null;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    t tVar = t.f32733a;
                    try {
                        gd.b.a(query, null);
                    } catch (Exception e10) {
                        e = e10;
                        str2 = str;
                        Log.e("FilePickerUtils", "Failed to handle file name: " + e);
                        return str2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    str2 = str;
                    throw th;
                }
            } else {
                str = null;
            }
        } catch (Exception e11) {
            e = e11;
        }
        if (str == null) {
            String path = uri.getPath();
            if (path != null) {
                str2 = b0.I0(path, '/', null, 2, null);
            }
            return str2;
        }
        return str;
    }

    public static final String n(Uri uri, Context con) {
        boolean w10;
        boolean w11;
        boolean w12;
        boolean H;
        boolean H2;
        List h10;
        boolean z10;
        kotlin.jvm.internal.m.e(con, "con");
        if (uri == null) {
            return null;
        }
        boolean z11 = true;
        if (Build.VERSION.SDK_INT < 30 && f5148a.t(uri)) {
            String documentId = DocumentsContract.getDocumentId(uri);
            String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
            if (kotlin.jvm.internal.m.a(documentId, "downloads")) {
                return path;
            }
            kotlin.jvm.internal.m.b(documentId);
            if (!new l("^ms[df]:.*").d(documentId)) {
                H2 = y.H(documentId, "raw:", false, 2, null);
                if (!H2) {
                    return null;
                }
                List g10 = new l(":").g(documentId, 0);
                if (!g10.isEmpty()) {
                    ListIterator listIterator = g10.listIterator(g10.size());
                    while (listIterator.hasPrevious()) {
                        if (((String) listIterator.previous()).length() == 0) {
                            z10 = true;
                            continue;
                        } else {
                            z10 = false;
                            continue;
                        }
                        if (!z10) {
                            h10 = w.i0(g10, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                h10 = o.h();
                return ((String[]) h10.toArray(new String[0]))[1];
            }
            return path + '/' + m(uri, con);
        }
        f fVar = f5148a;
        String q10 = fVar.q(uri);
        String separator = File.separator;
        kotlin.jvm.internal.m.d(separator, "separator");
        w10 = y.w(q10, separator, false, 2, null);
        if (w10) {
            q10 = q10.substring(0, q10.length() - 1);
            kotlin.jvm.internal.m.d(q10, "substring(...)");
        }
        String j10 = fVar.j(uri);
        kotlin.jvm.internal.m.d(separator, "separator");
        w11 = y.w(j10, separator, false, 2, null);
        if (w11) {
            j10 = j10.substring(0, j10.length() - 1);
            kotlin.jvm.internal.m.d(j10, "substring(...)");
        }
        if (j10.length() <= 0) {
            z11 = false;
        }
        if (z11) {
            w12 = y.w(q10, j10, false, 2, null);
            if (!w12) {
                kotlin.jvm.internal.m.d(separator, "separator");
                H = y.H(j10, separator, false, 2, null);
                if (H) {
                    return q10 + j10;
                }
                return q10 + separator + j10;
            }
            return q10;
        }
        return q10;
    }

    private final String o(String str, byte[] bArr) {
        boolean z10;
        Tika tika = new Tika();
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            String detect = tika.detect(bArr);
            kotlin.jvm.internal.m.d(detect, "detect(...)");
            return detect;
        }
        Detector detector = tika.getDetector();
        TikaInputStream tikaInputStream = TikaInputStream.get(bArr);
        Metadata metadata = new Metadata();
        metadata.set(TikaCoreProperties.RESOURCE_NAME_KEY, str);
        String mediaType = detector.detect(tikaInputStream, metadata).toString();
        kotlin.jvm.internal.m.d(mediaType, "toString(...)");
        return mediaType;
    }

    private final String q(Uri uri) {
        List z02;
        Object Z;
        boolean x10;
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        kotlin.jvm.internal.m.b(treeDocumentId);
        z02 = b0.z0(treeDocumentId, new String[]{":"}, false, 0, 6, null);
        if (z02.size() > 1) {
            String str = (String) z02.get(0);
            String str2 = (String) z02.get(1);
            x10 = y.x("primary", str, true);
            if (x10) {
                return Environment.getExternalStorageDirectory() + '/' + str2;
            }
            return "/storage/" + str + '/' + str2;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Environment.getExternalStorageDirectory());
        sb2.append('/');
        Z = w.Z(z02);
        sb2.append((String) Z);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArrayList r(Bundle bundle) {
        ArrayList parcelableArrayList;
        if (Build.VERSION.SDK_INT >= 33) {
            parcelableArrayList = bundle.getParcelableArrayList("selectedItems", Parcelable.class);
            return parcelableArrayList;
        }
        return bundle.getParcelableArrayList("selectedItems");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(c cVar, List list) {
        if (!list.isEmpty()) {
            cVar.h(list);
        } else {
            cVar.g("unknown_path", "Failed to retrieve path.");
        }
    }

    private final boolean t(Uri uri) {
        return kotlin.jvm.internal.m.a(uri.getAuthority(), "com.android.providers.downloads.documents");
    }

    public static final boolean u(Context context, Uri uri) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(uri, "uri");
        String k10 = f5148a.k(context, uri);
        if (k10 == null) {
            return false;
        }
        if (!k10.contentEquals("jpg") && !k10.contentEquals("jpeg") && !k10.contentEquals("png") && !k10.contentEquals("webp")) {
            return false;
        }
        return true;
    }

    private final void v(File file, a.C0092a c0092a) {
        try {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                bufferedInputStream.read(bArr, 0, length);
                bufferedInputStream.close();
            } catch (FileNotFoundException e10) {
                Log.e("FilePickerUtils", "File not found: " + e10.getMessage(), null);
            } catch (IOException e11) {
                Log.e("FilePickerUtils", "Failed to close file streams: " + e11.getMessage(), null);
            }
            c0092a.b(bArr);
        } catch (Exception e12) {
            Log.e("FilePickerUtils", "Failed to load bytes into memory with error " + e12 + ". Probably the file is too big to fit device memory. Bytes won't be added to the file this time.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x011b A[Catch: IOException -> 0x0117, TryCatch #1 {IOException -> 0x0117, blocks: (B:56:0x010d, B:58:0x0113, B:62:0x011b, B:64:0x0120), top: B:72:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0120 A[Catch: IOException -> 0x0117, TRY_LEAVE, TryCatch #1 {IOException -> 0x0117, blocks: (B:56:0x010d, B:58:0x0113, B:62:0x011b, B:64:0x0120), top: B:72:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final cb.a w(android.content.Context r13, android.net.Uri r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cb.f.w(android.content.Context, android.net.Uri, boolean):cb.a");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Uri y(Activity activity, Uri uri, int i10) {
        if (i10 > 0) {
            Context applicationContext = activity.getApplicationContext();
            kotlin.jvm.internal.m.d(applicationContext, "getApplicationContext(...)");
            if (u(applicationContext, uri)) {
                Context applicationContext2 = activity.getApplicationContext();
                kotlin.jvm.internal.m.d(applicationContext2, "getApplicationContext(...)");
                return g(uri, i10, applicationContext2);
            }
            return uri;
        }
        return uri;
    }

    private final void z(File file) {
        if (file != null && file.exists()) {
            if (file.listFiles() != null && file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    listFiles = new File[0];
                }
                for (File file2 : listFiles) {
                    z(file2);
                }
            }
            file.delete();
        }
    }

    public final void A(c cVar, String str, String str2, String str3, byte[] bArr, MethodChannel.Result result) {
        boolean z10;
        kotlin.jvm.internal.m.e(cVar, "<this>");
        kotlin.jvm.internal.m.e(result, "result");
        if (!cVar.v(result)) {
            c.f5124j.a(result);
            return;
        }
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        boolean z11 = false;
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            intent.putExtra("android.intent.extra.TITLE", str);
        }
        cVar.q(bArr);
        if (!kotlin.jvm.internal.m.a("dir", str2)) {
            try {
                intent.setType(o(str, bArr));
            } catch (Throwable th) {
                intent.setType("*/*");
                Log.e("FilePickerDelegate", "Failed to detect mime type. " + th);
            }
        }
        if (str3 == null || str3.length() == 0) {
            z11 = true;
        }
        if (!z11 && Build.VERSION.SDK_INT >= 26) {
            intent.putExtra("android.provider.extra.INITIAL_URI", Uri.parse(str3));
        }
        if (intent.resolveActivity(cVar.i().getPackageManager()) != null) {
            cVar.i().startActivityForResult(intent, c.f5124j.c());
            return;
        }
        Log.e("FilePickerDelegate", "Can't find a valid activity to handle the request. Make sure you've a file explorer installed.");
        cVar.g("invalid_format_type", "Can't handle the provided file type.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0089, code lost:
        r2 = rd.b0.z0(r7, new java.lang.String[]{io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA}, false, 0, 6, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(cb.c r14) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cb.f.B(cb.c):void");
    }

    public final void C(c cVar, String str, Boolean bool, Boolean bool2, ArrayList arrayList, Integer num, MethodChannel.Result result) {
        kotlin.jvm.internal.m.e(result, "result");
        boolean z10 = false;
        if (cVar != null && !cVar.v(result)) {
            z10 = true;
        }
        if (z10) {
            c.f5124j.a(result);
            return;
        }
        if (cVar != null) {
            cVar.w(str);
        }
        if (bool != null && cVar != null) {
            cVar.u(bool.booleanValue());
        }
        if (bool2 != null && cVar != null) {
            cVar.t(bool2.booleanValue());
        }
        if (cVar != null) {
            cVar.p(arrayList);
        }
        if (num != null && cVar != null) {
            cVar.r(num.intValue());
        }
        if (cVar != null) {
            B(cVar);
        }
    }

    public final Uri D(Context context, Uri uri, byte[] bArr) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(uri, "uri");
        OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri);
        if (openOutputStream != null) {
            if (bArr != null) {
                try {
                    openOutputStream.write(bArr);
                    t tVar = t.f32733a;
                } finally {
                }
            }
            gd.b.a(openOutputStream, null);
        }
        return uri;
    }

    public final String l(byte[] bArr) {
        String G0;
        String detect = new Tika().detect(bArr);
        kotlin.jvm.internal.m.b(detect);
        G0 = b0.G0(detect, "/", null, 2, null);
        return G0;
    }

    public final ArrayList p(ArrayList arrayList) {
        boolean z10;
        if (arrayList != null && !arrayList.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension((String) arrayList.get(i10));
            if (mimeTypeFromExtension == null) {
                Log.w("FilePickerUtils", "Custom file type " + ((String) arrayList.get(i10)) + " is unsupported and will be ignored.");
            } else {
                arrayList2.add(mimeTypeFromExtension);
            }
        }
        return arrayList2;
    }

    public final void x(c cVar, Activity activity, Intent intent, int i10, boolean z10, String type) {
        kotlin.jvm.internal.m.e(cVar, "<this>");
        kotlin.jvm.internal.m.e(activity, "activity");
        kotlin.jvm.internal.m.e(type, "type");
        td.i.d(m0.a(z0.b()), null, null, new a(intent, cVar, activity, i10, z10, type, null), 3, null);
    }
}
