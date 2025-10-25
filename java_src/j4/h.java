package j4;

import android.net.Uri;
import b3.x1;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class h extends i {

    /* renamed from: n  reason: collision with root package name */
    public static final h f24398n = new h("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: d  reason: collision with root package name */
    public final List f24399d;

    /* renamed from: e  reason: collision with root package name */
    public final List f24400e;

    /* renamed from: f  reason: collision with root package name */
    public final List f24401f;

    /* renamed from: g  reason: collision with root package name */
    public final List f24402g;

    /* renamed from: h  reason: collision with root package name */
    public final List f24403h;

    /* renamed from: i  reason: collision with root package name */
    public final List f24404i;

    /* renamed from: j  reason: collision with root package name */
    public final x1 f24405j;

    /* renamed from: k  reason: collision with root package name */
    public final List f24406k;

    /* renamed from: l  reason: collision with root package name */
    public final Map f24407l;

    /* renamed from: m  reason: collision with root package name */
    public final List f24408m;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f24409a;

        /* renamed from: b  reason: collision with root package name */
        public final x1 f24410b;

        /* renamed from: c  reason: collision with root package name */
        public final String f24411c;

        /* renamed from: d  reason: collision with root package name */
        public final String f24412d;

        public a(Uri uri, x1 x1Var, String str, String str2) {
            this.f24409a = uri;
            this.f24410b = x1Var;
            this.f24411c = str;
            this.f24412d = str2;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f24413a;

        /* renamed from: b  reason: collision with root package name */
        public final x1 f24414b;

        /* renamed from: c  reason: collision with root package name */
        public final String f24415c;

        /* renamed from: d  reason: collision with root package name */
        public final String f24416d;

        /* renamed from: e  reason: collision with root package name */
        public final String f24417e;

        /* renamed from: f  reason: collision with root package name */
        public final String f24418f;

        public b(Uri uri, x1 x1Var, String str, String str2, String str3, String str4) {
            this.f24413a = uri;
            this.f24414b = x1Var;
            this.f24415c = str;
            this.f24416d = str2;
            this.f24417e = str3;
            this.f24418f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new x1.b().U(CommonUrlParts.Values.FALSE_INTEGER).M("application/x-mpegURL").G(), null, null, null, null);
        }

        public b a(x1 x1Var) {
            return new b(this.f24413a, x1Var, this.f24415c, this.f24416d, this.f24417e, this.f24418f);
        }
    }

    public h(String str, List list, List list2, List list3, List list4, List list5, List list6, x1 x1Var, List list7, boolean z10, Map map, List list8) {
        super(str, list, z10);
        List list9;
        this.f24399d = Collections.unmodifiableList(f(list2, list3, list4, list5, list6));
        this.f24400e = Collections.unmodifiableList(list2);
        this.f24401f = Collections.unmodifiableList(list3);
        this.f24402g = Collections.unmodifiableList(list4);
        this.f24403h = Collections.unmodifiableList(list5);
        this.f24404i = Collections.unmodifiableList(list6);
        this.f24405j = x1Var;
        if (list7 != null) {
            list9 = Collections.unmodifiableList(list7);
        } else {
            list9 = null;
        }
        this.f24406k = list9;
        this.f24407l = Collections.unmodifiableMap(map);
        this.f24408m = Collections.unmodifiableList(list8);
    }

    private static void b(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((a) list.get(i10)).f24409a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    private static List d(List list, int i10, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            int i12 = 0;
            while (true) {
                if (i12 < list2.size()) {
                    c4.c cVar = (c4.c) list2.get(i12);
                    if (cVar.f5032b == i10 && cVar.f5033c == i11) {
                        arrayList.add(obj);
                        break;
                    }
                    i12++;
                }
            }
        }
        return arrayList;
    }

    public static h e(String str) {
        return new h("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List f(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = ((b) list.get(i10)).f24413a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        b(list2, arrayList);
        b(list3, arrayList);
        b(list4, arrayList);
        b(list5, arrayList);
        return arrayList;
    }

    @Override // c4.a
    /* renamed from: c */
    public h a(List list) {
        return new h(this.f24419a, this.f24420b, d(this.f24400e, 0, list), Collections.emptyList(), d(this.f24402g, 1, list), d(this.f24403h, 2, list), Collections.emptyList(), this.f24405j, this.f24406k, this.f24421c, this.f24407l, this.f24408m);
    }
}
