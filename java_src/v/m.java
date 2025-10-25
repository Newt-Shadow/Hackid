package v;

import a0.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import u.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap f31151a = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements b {
        a() {
        }

        @Override // v.m.b
        /* renamed from: c */
        public int a(k.b bVar) {
            return bVar.e();
        }

        @Override // v.m.b
        /* renamed from: d */
        public boolean b(k.b bVar) {
            return bVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        int a(Object obj);

        boolean b(Object obj);
    }

    private static Object f(Object[] objArr, int i10, b bVar) {
        int i11;
        boolean z10;
        if ((i10 & 1) == 0) {
            i11 = 400;
        } else {
            i11 = 700;
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return g(objArr, i11, z10, bVar);
    }

    private static Object g(Object[] objArr, int i10, boolean z10, b bVar) {
        int i11;
        Object obj = null;
        int i12 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int abs = Math.abs(bVar.a(obj2) - i10) * 2;
            if (bVar.b(obj2) == z10) {
                i11 = 0;
            } else {
                i11 = 1;
            }
            int i13 = abs + i11;
            if (obj == null || i12 > i13) {
                obj = obj2;
                i12 = i13;
            }
        }
        return obj;
    }

    public abstract Typeface a(Context context, d.c cVar, Resources resources, int i10);

    public abstract Typeface b(Context context, CancellationSignal cancellationSignal, k.b[] bVarArr, int i10);

    public Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Typeface d(Context context, InputStream inputStream) {
        File e10 = n.e(context);
        if (e10 == null) {
            return null;
        }
        try {
            if (!n.d(e10, inputStream)) {
                return null;
            }
            return Typeface.createFromFile(e10.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            e10.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        File e10 = n.e(context);
        if (e10 == null) {
            return null;
        }
        try {
            if (!n.c(e10, resources, i10)) {
                return null;
            }
            return Typeface.createFromFile(e10.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            e10.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k.b h(k.b[] bVarArr, int i10) {
        return (k.b) f(bVarArr, i10, new a());
    }
}
