package androidx.core.app;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private final String f2007a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f2008b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence[] f2009c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f2010d;

    /* renamed from: e  reason: collision with root package name */
    private final int f2011e;

    /* renamed from: f  reason: collision with root package name */
    private final Bundle f2012f;

    /* renamed from: g  reason: collision with root package name */
    private final Set f2013g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        public static RemoteInput a(v vVar) {
            Set<String> d10;
            RemoteInput.Builder addExtras = new RemoteInput.Builder(vVar.i()).setLabel(vVar.h()).setChoices(vVar.e()).setAllowFreeFormInput(vVar.c()).addExtras(vVar.g());
            if (Build.VERSION.SDK_INT >= 26 && (d10 = vVar.d()) != null) {
                for (String str : d10) {
                    b.a(addExtras, str, true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                c.a(addExtras, vVar.f());
            }
            return addExtras.build();
        }

        static Bundle b(Intent intent) {
            return RemoteInput.getResultsFromIntent(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static RemoteInput.Builder a(RemoteInput.Builder builder, String str, boolean z10) {
            return builder.setAllowDataType(str, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {
        static RemoteInput.Builder a(RemoteInput.Builder builder, int i10) {
            return builder.setEditChoicesBeforeSending(i10);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f2014a;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f2017d;

        /* renamed from: e  reason: collision with root package name */
        private CharSequence[] f2018e;

        /* renamed from: b  reason: collision with root package name */
        private final Set f2015b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Bundle f2016c = new Bundle();

        /* renamed from: f  reason: collision with root package name */
        private boolean f2019f = true;

        /* renamed from: g  reason: collision with root package name */
        private int f2020g = 0;

        public d(String str) {
            if (str != null) {
                this.f2014a = str;
                return;
            }
            throw new IllegalArgumentException("Result key can't be null");
        }

        public v a() {
            return new v(this.f2014a, this.f2017d, this.f2018e, this.f2019f, this.f2020g, this.f2016c, this.f2015b);
        }

        public d b(String str, boolean z10) {
            if (z10) {
                this.f2015b.add(str);
            } else {
                this.f2015b.remove(str);
            }
            return this;
        }

        public d c(boolean z10) {
            this.f2019f = z10;
            return this;
        }

        public d d(CharSequence[] charSequenceArr) {
            this.f2018e = charSequenceArr;
            return this;
        }

        public d e(CharSequence charSequence) {
            this.f2017d = charSequence;
            return this;
        }
    }

    v(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z10, int i10, Bundle bundle, Set set) {
        this.f2007a = str;
        this.f2008b = charSequence;
        this.f2009c = charSequenceArr;
        this.f2010d = z10;
        this.f2011e = i10;
        this.f2012f = bundle;
        this.f2013g = set;
        if (f() == 2 && !c()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    static RemoteInput a(v vVar) {
        return a.a(vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteInput[] b(v[] vVarArr) {
        if (vVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[vVarArr.length];
        for (int i10 = 0; i10 < vVarArr.length; i10++) {
            remoteInputArr[i10] = a(vVarArr[i10]);
        }
        return remoteInputArr;
    }

    public static Bundle j(Intent intent) {
        return a.b(intent);
    }

    public boolean c() {
        return this.f2010d;
    }

    public Set d() {
        return this.f2013g;
    }

    public CharSequence[] e() {
        return this.f2009c;
    }

    public int f() {
        return this.f2011e;
    }

    public Bundle g() {
        return this.f2012f;
    }

    public CharSequence h() {
        return this.f2008b;
    }

    public String i() {
        return this.f2007a;
    }

    public boolean k() {
        if (!c() && ((e() == null || e().length == 0) && d() != null && !d().isEmpty())) {
            return true;
        }
        return false;
    }
}
