package ab;

import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.m;
import rd.l;
import rd.y;
import yc.o;
import yc.w;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f272a = new a();

    private a() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String b(android.content.Context r9, android.net.Uri r10, java.lang.String r11, java.lang.String[] r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.a.b(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public final String a(Context context, Uri uri) {
        boolean x10;
        List h10;
        Uri uri2;
        boolean z10;
        List h11;
        String[] strArr;
        boolean x11;
        boolean z11;
        m.e(context, "context");
        m.e(uri, "uri");
        if (!DocumentsContract.isDocumentUri(context, uri)) {
            x10 = y.x("content", uri.getScheme(), true);
            if (x10) {
                return b(context, uri, null, null);
            }
        } else if (d(uri)) {
            String documentId = DocumentsContract.getDocumentId(uri);
            m.b(documentId);
            List g10 = new l(":").g(documentId, 0);
            if (!g10.isEmpty()) {
                ListIterator listIterator = g10.listIterator(g10.size());
                while (listIterator.hasPrevious()) {
                    if (((String) listIterator.previous()).length() == 0) {
                        z11 = true;
                        continue;
                    } else {
                        z11 = false;
                        continue;
                    }
                    if (!z11) {
                        h11 = w.i0(g10, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            h11 = o.h();
            x11 = y.x("primary", ((String[]) h11.toArray(new String[0]))[0], true);
            if (x11) {
                return Environment.getExternalStorageDirectory() + '/' + strArr[1];
            }
            return b(context, uri, null, null);
        } else if (c(uri)) {
            try {
                String documentId2 = DocumentsContract.getDocumentId(uri);
                Uri parse = Uri.parse("content://downloads/public_downloads");
                Long valueOf = Long.valueOf(documentId2);
                m.d(valueOf, "valueOf(...)");
                Uri withAppendedId = ContentUris.withAppendedId(parse, valueOf.longValue());
                m.d(withAppendedId, "withAppendedId(...)");
                return b(context, withAppendedId, null, null);
            } catch (Exception unused) {
                return b(context, uri, null, null);
            }
        } else if (e(uri)) {
            String documentId3 = DocumentsContract.getDocumentId(uri);
            m.b(documentId3);
            List g11 = new l(":").g(documentId3, 0);
            if (!g11.isEmpty()) {
                ListIterator listIterator2 = g11.listIterator(g11.size());
                while (listIterator2.hasPrevious()) {
                    if (((String) listIterator2.previous()).length() == 0) {
                        z10 = true;
                        continue;
                    } else {
                        z10 = false;
                        continue;
                    }
                    if (!z10) {
                        h10 = w.i0(g11, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
            }
            h10 = o.h();
            String[] strArr2 = (String[]) h10.toArray(new String[0]);
            String str = strArr2[0];
            int hashCode = str.hashCode();
            if (hashCode != 93166550) {
                if (hashCode != 100313435) {
                    if (hashCode == 112202875 && str.equals("video")) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    }
                    uri2 = null;
                } else {
                    if (str.equals("image")) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    }
                    uri2 = null;
                }
            } else {
                if (str.equals("audio")) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                uri2 = null;
            }
            if (uri2 == null) {
                return null;
            }
            return b(context, uri2, "_id=?", new String[]{strArr2[1]});
        }
        return uri.getPath();
    }

    public final boolean c(Uri uri) {
        m.e(uri, "uri");
        return m.a("com.android.providers.downloads.documents", uri.getAuthority());
    }

    public final boolean d(Uri uri) {
        m.e(uri, "uri");
        return m.a("com.android.externalstorage.documents", uri.getAuthority());
    }

    public final boolean e(Uri uri) {
        m.e(uri, "uri");
        return m.a("com.android.providers.media.documents", uri.getAuthority());
    }
}
