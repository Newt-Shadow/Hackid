package a0;

import a0.k;
import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final r.h f13a = new r.h(2);

    /* renamed from: b  reason: collision with root package name */
    private static final Comparator f14b = new Comparator() { // from class: a0.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g10;
            g10 = d.g((byte[]) obj, (byte[]) obj2);
            return g10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        static a a(Context context, Uri uri) {
            return new b(context, uri);
        }

        Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final ContentProviderClient f15a;

        b(Context context, Uri uri) {
            this.f15a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // a0.d.a
        public Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f15a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e10) {
                Log.w("FontsProvider", "Unable to query the content provider", e10);
                return null;
            }
        }

        @Override // a0.d.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f15a;
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        String f16a;

        /* renamed from: b  reason: collision with root package name */
        String f17b;

        /* renamed from: c  reason: collision with root package name */
        List f18c;

        c(String str, String str2, List list) {
            this.f16a = str;
            this.f17b = str2;
            this.f18c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Objects.equals(this.f16a, cVar.f16a) && Objects.equals(this.f17b, cVar.f17b) && Objects.equals(this.f18c, cVar.f18c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f16a, this.f17b, this.f18c);
        }
    }

    private static List b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean c(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals((byte[]) list.get(i10), (byte[]) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static List d(e eVar, Resources resources) {
        if (eVar.b() != null) {
            return eVar.b();
        }
        return u.d.c(resources, eVar.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k.a e(Context context, List list, CancellationSignal cancellationSignal) {
        k1.a.c("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < list.size(); i10++) {
                e eVar = (e) list.get(i10);
                ProviderInfo f10 = f(context.getPackageManager(), eVar, context.getResources());
                if (f10 == null) {
                    return k.a.b(1, null);
                }
                arrayList.add(h(context, eVar, f10.authority, cancellationSignal));
            }
            return k.a.a(0, arrayList);
        } finally {
            k1.a.f();
        }
    }

    static ProviderInfo f(PackageManager packageManager, e eVar, Resources resources) {
        k1.a.c("FontProvider.getProvider");
        try {
            List d10 = d(eVar, resources);
            c cVar = new c(eVar.e(), eVar.f(), d10);
            ProviderInfo providerInfo = (ProviderInfo) f13a.c(cVar);
            if (providerInfo != null) {
                return providerInfo;
            }
            String e10 = eVar.e();
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(e10, 0);
            if (resolveContentProvider != null) {
                if (resolveContentProvider.packageName.equals(eVar.f())) {
                    List b10 = b(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                    Collections.sort(b10, f14b);
                    for (int i10 = 0; i10 < d10.size(); i10++) {
                        ArrayList arrayList = new ArrayList((Collection) d10.get(i10));
                        Collections.sort(arrayList, f14b);
                        if (c(b10, arrayList)) {
                            f13a.d(cVar, resolveContentProvider);
                            return resolveContentProvider;
                        }
                    }
                    k1.a.f();
                    return null;
                }
                throw new PackageManager.NameNotFoundException("Found content provider " + e10 + ", but package was not " + eVar.f());
            }
            throw new PackageManager.NameNotFoundException("No package found for authority: " + e10);
        } finally {
            k1.a.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            byte b11 = bArr2[i10];
            if (b10 != b11) {
                return b10 - b11;
            }
        }
        return 0;
    }

    static k.b[] h(Context context, e eVar, String str, CancellationSignal cancellationSignal) {
        ArrayList arrayList;
        int i10;
        int i11;
        int i12;
        Uri withAppendedId;
        int i13;
        int i14;
        boolean z10;
        k1.a.c("FontProvider.query");
        try {
            ArrayList arrayList2 = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath(Constants.FILE).build();
            a a10 = a.a(context, build);
            Cursor cursor = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                k1.a.c("ContentQueryWrapper.query");
                boolean z11 = true;
                Cursor b10 = a10.b(build, strArr, "query = ?", new String[]{eVar.g()}, null, cancellationSignal);
                try {
                    if (b10 != null && b10.getCount() > 0) {
                        int columnIndex = b10.getColumnIndex("result_code");
                        ArrayList arrayList3 = new ArrayList();
                        int columnIndex2 = b10.getColumnIndex("_id");
                        int columnIndex3 = b10.getColumnIndex("file_id");
                        int columnIndex4 = b10.getColumnIndex("font_ttc_index");
                        int columnIndex5 = b10.getColumnIndex("font_weight");
                        int columnIndex6 = b10.getColumnIndex("font_italic");
                        while (b10.moveToNext()) {
                            if (columnIndex != -1) {
                                i10 = b10.getInt(columnIndex);
                            } else {
                                i10 = 0;
                            }
                            if (columnIndex4 != -1) {
                                i11 = b10.getInt(columnIndex4);
                            } else {
                                i11 = 0;
                            }
                            if (columnIndex3 == -1) {
                                i12 = i11;
                                withAppendedId = ContentUris.withAppendedId(build, b10.getLong(columnIndex2));
                            } else {
                                i12 = i11;
                                withAppendedId = ContentUris.withAppendedId(build2, b10.getLong(columnIndex3));
                            }
                            if (columnIndex5 != -1) {
                                i13 = b10.getInt(columnIndex5);
                            } else {
                                i13 = 400;
                            }
                            int i15 = i13;
                            if (columnIndex6 != -1 && b10.getInt(columnIndex6) == z11) {
                                z10 = z11;
                                i14 = i15;
                            } else {
                                i14 = i15;
                                z10 = false;
                            }
                            arrayList3.add(k.b.a(withAppendedId, i12, i14, z10, i10));
                            z11 = true;
                        }
                        arrayList = arrayList3;
                    } else {
                        arrayList = arrayList2;
                    }
                    if (b10 != null) {
                        b10.close();
                    }
                    a10.close();
                    return (k.b[]) arrayList.toArray(new k.b[0]);
                } catch (Throwable th) {
                    th = th;
                    cursor = b10;
                    if (cursor != null) {
                        cursor.close();
                    }
                    a10.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } finally {
            k1.a.f();
        }
    }
}
