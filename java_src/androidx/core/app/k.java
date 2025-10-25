package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.core.app.t;
import androidx.core.graphics.drawable.IconCompat;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class k {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Bundle f1879a;

        /* renamed from: b  reason: collision with root package name */
        private IconCompat f1880b;

        /* renamed from: c  reason: collision with root package name */
        private final v[] f1881c;

        /* renamed from: d  reason: collision with root package name */
        private final v[] f1882d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f1883e;

        /* renamed from: f  reason: collision with root package name */
        boolean f1884f;

        /* renamed from: g  reason: collision with root package name */
        private final int f1885g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f1886h;

        /* renamed from: i  reason: collision with root package name */
        public int f1887i;

        /* renamed from: j  reason: collision with root package name */
        public CharSequence f1888j;

        /* renamed from: k  reason: collision with root package name */
        public PendingIntent f1889k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f1890l;

        /* renamed from: androidx.core.app.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0028a {

            /* renamed from: a  reason: collision with root package name */
            private final IconCompat f1891a;

            /* renamed from: b  reason: collision with root package name */
            private final CharSequence f1892b;

            /* renamed from: c  reason: collision with root package name */
            private final PendingIntent f1893c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f1894d;

            /* renamed from: e  reason: collision with root package name */
            private final Bundle f1895e;

            /* renamed from: f  reason: collision with root package name */
            private ArrayList f1896f;

            /* renamed from: g  reason: collision with root package name */
            private int f1897g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f1898h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f1899i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f1900j;

            public C0028a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            private void c() {
                if (!this.f1899i || this.f1893c != null) {
                    return;
                }
                throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
            }

            public C0028a a(v vVar) {
                if (this.f1896f == null) {
                    this.f1896f = new ArrayList();
                }
                if (vVar != null) {
                    this.f1896f.add(vVar);
                }
                return this;
            }

            public a b() {
                v[] vVarArr;
                c();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = this.f1896f;
                if (arrayList3 != null) {
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        v vVar = (v) it.next();
                        if (vVar.k()) {
                            arrayList.add(vVar);
                        } else {
                            arrayList2.add(vVar);
                        }
                    }
                }
                v[] vVarArr2 = null;
                if (arrayList.isEmpty()) {
                    vVarArr = null;
                } else {
                    vVarArr = (v[]) arrayList.toArray(new v[arrayList.size()]);
                }
                if (!arrayList2.isEmpty()) {
                    vVarArr2 = (v[]) arrayList2.toArray(new v[arrayList2.size()]);
                }
                return new a(this.f1891a, this.f1892b, this.f1893c, this.f1895e, vVarArr2, vVarArr, this.f1894d, this.f1897g, this.f1898h, this.f1899i, this.f1900j);
            }

            public C0028a d(boolean z10) {
                this.f1894d = z10;
                return this;
            }

            public C0028a e(boolean z10) {
                this.f1899i = z10;
                return this;
            }

            public C0028a f(int i10) {
                this.f1897g = i10;
                return this;
            }

            public C0028a g(boolean z10) {
                this.f1898h = z10;
                return this;
            }

            public C0028a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i10 != 0 ? IconCompat.k(null, "", i10) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            private C0028a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, v[] vVarArr, boolean z10, int i10, boolean z11, boolean z12, boolean z13) {
                this.f1894d = true;
                this.f1898h = true;
                this.f1891a = iconCompat;
                this.f1892b = e.f(charSequence);
                this.f1893c = pendingIntent;
                this.f1895e = bundle;
                this.f1896f = vVarArr == null ? null : new ArrayList(Arrays.asList(vVarArr));
                this.f1894d = z10;
                this.f1897g = i10;
                this.f1898h = z11;
                this.f1899i = z12;
                this.f1900j = z13;
            }
        }

        public a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i10 != 0 ? IconCompat.k(null, "", i10) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.f1889k;
        }

        public boolean b() {
            return this.f1883e;
        }

        public Bundle c() {
            return this.f1879a;
        }

        public IconCompat d() {
            int i10;
            if (this.f1880b == null && (i10 = this.f1887i) != 0) {
                this.f1880b = IconCompat.k(null, "", i10);
            }
            return this.f1880b;
        }

        public v[] e() {
            return this.f1881c;
        }

        public int f() {
            return this.f1885g;
        }

        public boolean g() {
            return this.f1884f;
        }

        public CharSequence h() {
            return this.f1888j;
        }

        public boolean i() {
            return this.f1890l;
        }

        public boolean j() {
            return this.f1886h;
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false, false);
        }

        a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, v[] vVarArr, v[] vVarArr2, boolean z10, int i10, boolean z11, boolean z12, boolean z13) {
            this.f1884f = true;
            this.f1880b = iconCompat;
            if (iconCompat != null && iconCompat.o() == 2) {
                this.f1887i = iconCompat.m();
            }
            this.f1888j = e.f(charSequence);
            this.f1889k = pendingIntent;
            this.f1879a = bundle == null ? new Bundle() : bundle;
            this.f1881c = vVarArr;
            this.f1882d = vVarArr2;
            this.f1883e = z10;
            this.f1885g = i10;
            this.f1884f = z11;
            this.f1886h = z12;
            this.f1890l = z13;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends j {

        /* renamed from: e  reason: collision with root package name */
        private IconCompat f1901e;

        /* renamed from: f  reason: collision with root package name */
        private IconCompat f1902f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f1903g;

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f1904h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f1905i;

        /* loaded from: classes.dex */
        private static class a {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        /* renamed from: androidx.core.app.k$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0029b {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }

            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            static void c(Notification.BigPictureStyle bigPictureStyle, boolean z10) {
                bigPictureStyle.showBigPictureWhenCollapsed(z10);
            }
        }

        private static IconCompat n(Parcelable parcelable) {
            if (parcelable != null) {
                if (parcelable instanceof Icon) {
                    return IconCompat.b((Icon) parcelable);
                }
                if (parcelable instanceof Bitmap) {
                    return IconCompat.f((Bitmap) parcelable);
                }
                return null;
            }
            return null;
        }

        public static IconCompat q(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            Parcelable parcelable = bundle.getParcelable("android.picture");
            if (parcelable != null) {
                return n(parcelable);
            }
            return n(bundle.getParcelable("android.pictureIcon"));
        }

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            Context context;
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(jVar.a()).setBigContentTitle(this.f1956b);
            IconCompat iconCompat = this.f1901e;
            Context context2 = null;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    if (jVar instanceof n) {
                        context = ((n) jVar).f();
                    } else {
                        context = null;
                    }
                    C0029b.a(bigContentTitle, this.f1901e.v(context));
                } else if (iconCompat.o() == 1) {
                    bigContentTitle = bigContentTitle.bigPicture(this.f1901e.l());
                }
            }
            if (this.f1903g) {
                if (this.f1902f == null) {
                    bigContentTitle.bigLargeIcon((Bitmap) null);
                } else {
                    if (jVar instanceof n) {
                        context2 = ((n) jVar).f();
                    }
                    a.a(bigContentTitle, this.f1902f.v(context2));
                }
            }
            if (this.f1958d) {
                bigContentTitle.setSummaryText(this.f1957c);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                C0029b.c(bigContentTitle, this.f1905i);
                C0029b.b(bigContentTitle, this.f1904h);
            }
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        @Override // androidx.core.app.k.j
        protected void l(Bundle bundle) {
            super.l(bundle);
            if (bundle.containsKey("android.largeIcon.big")) {
                this.f1902f = n(bundle.getParcelable("android.largeIcon.big"));
                this.f1903g = true;
            }
            this.f1901e = q(bundle);
            this.f1905i = bundle.getBoolean("android.showBigPictureWhenCollapsed");
        }

        public b o(Bitmap bitmap) {
            IconCompat f10;
            if (bitmap == null) {
                f10 = null;
            } else {
                f10 = IconCompat.f(bitmap);
            }
            this.f1902f = f10;
            this.f1903g = true;
            return this;
        }

        public b p(Bitmap bitmap) {
            IconCompat f10;
            if (bitmap == null) {
                f10 = null;
            } else {
                f10 = IconCompat.f(bitmap);
            }
            this.f1901e = f10;
            return this;
        }

        public b r(CharSequence charSequence) {
            this.f1956b = e.f(charSequence);
            return this;
        }

        public b s(CharSequence charSequence) {
            this.f1957c = e.f(charSequence);
            this.f1958d = true;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends j {

        /* renamed from: e  reason: collision with root package name */
        private CharSequence f1906e;

        @Override // androidx.core.app.k.j
        public void a(Bundle bundle) {
            super.a(bundle);
        }

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            Notification.BigTextStyle bigText = new Notification.BigTextStyle(jVar.a()).setBigContentTitle(this.f1956b).bigText(this.f1906e);
            if (this.f1958d) {
                bigText.setSummaryText(this.f1957c);
            }
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        @Override // androidx.core.app.k.j
        protected void l(Bundle bundle) {
            super.l(bundle);
            this.f1906e = bundle.getCharSequence("android.bigText");
        }

        public c n(CharSequence charSequence) {
            this.f1906e = e.f(charSequence);
            return this;
        }

        public c o(CharSequence charSequence) {
            this.f1956b = e.f(charSequence);
            return this;
        }

        public c p(CharSequence charSequence) {
            this.f1957c = e.f(charSequence);
            this.f1958d = true;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {
        public static Notification.BubbleMetadata a(d dVar) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class f extends j {

        /* renamed from: e  reason: collision with root package name */
        private int f1933e;

        /* renamed from: f  reason: collision with root package name */
        private t f1934f;

        /* renamed from: g  reason: collision with root package name */
        private PendingIntent f1935g;

        /* renamed from: h  reason: collision with root package name */
        private PendingIntent f1936h;

        /* renamed from: i  reason: collision with root package name */
        private PendingIntent f1937i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f1938j;

        /* renamed from: k  reason: collision with root package name */
        private Integer f1939k;

        /* renamed from: l  reason: collision with root package name */
        private Integer f1940l;

        /* renamed from: m  reason: collision with root package name */
        private IconCompat f1941m;

        /* renamed from: n  reason: collision with root package name */
        private CharSequence f1942n;

        /* loaded from: classes.dex */
        static class a {
            static Notification.Builder a(Notification.Builder builder, String str) {
                return builder.addPerson(str);
            }

            static Notification.Builder b(Notification.Builder builder, String str) {
                return builder.setCategory(str);
            }
        }

        /* loaded from: classes.dex */
        static class b {
            static Parcelable a(Icon icon) {
                return icon;
            }

            static void b(Notification.Builder builder, Icon icon) {
                builder.setLargeIcon(icon);
            }
        }

        /* loaded from: classes.dex */
        static class c {
            static Notification.Builder a(Notification.Builder builder, Person person) {
                return builder.addPerson(person);
            }

            static Parcelable b(Person person) {
                return person;
            }
        }

        /* loaded from: classes.dex */
        static class d {
            static Notification.CallStyle a(Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
            }

            static Notification.CallStyle b(Person person, PendingIntent pendingIntent) {
                return Notification.CallStyle.forOngoingCall(person, pendingIntent);
            }

            static Notification.CallStyle c(Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
                return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
            }

            static Notification.CallStyle d(Notification.CallStyle callStyle, int i10) {
                return callStyle.setAnswerButtonColorHint(i10);
            }

            static Notification.CallStyle e(Notification.CallStyle callStyle, int i10) {
                return callStyle.setDeclineButtonColorHint(i10);
            }

            static Notification.CallStyle f(Notification.CallStyle callStyle, boolean z10) {
                return callStyle.setIsVideo(z10);
            }

            static Notification.CallStyle g(Notification.CallStyle callStyle, Icon icon) {
                return callStyle.setVerificationIcon(icon);
            }

            static Notification.CallStyle h(Notification.CallStyle callStyle, CharSequence charSequence) {
                return callStyle.setVerificationText(charSequence);
            }
        }

        private String o() {
            int i10 = this.f1933e;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return this.f1955a.f1907a.getResources().getString(t.f.f29741g);
                }
                return this.f1955a.f1907a.getResources().getString(t.f.f29740f);
            }
            return this.f1955a.f1907a.getResources().getString(t.f.f29739e);
        }

        private boolean p(a aVar) {
            if (aVar != null && aVar.c().getBoolean("key_action_priority")) {
                return true;
            }
            return false;
        }

        private a q(int i10, int i11, Integer num, int i12, PendingIntent pendingIntent) {
            if (num == null) {
                num = Integer.valueOf(androidx.core.content.a.c(this.f1955a.f1907a, i12));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) this.f1955a.f1907a.getResources().getString(i11));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
            a b10 = new a.C0028a(IconCompat.j(this.f1955a.f1907a, i10), spannableStringBuilder, pendingIntent).b();
            b10.c().putBoolean("key_action_priority", true);
            return b10;
        }

        private a r() {
            int i10;
            int i11;
            int i12 = t.d.f29707b;
            int i13 = t.d.f29706a;
            PendingIntent pendingIntent = this.f1935g;
            if (pendingIntent == null) {
                return null;
            }
            boolean z10 = this.f1938j;
            if (z10) {
                i10 = i12;
            } else {
                i10 = i13;
            }
            if (z10) {
                i11 = t.f.f29736b;
            } else {
                i11 = t.f.f29735a;
            }
            return q(i10, i11, this.f1939k, t.b.f29702a, pendingIntent);
        }

        private a s() {
            int i10 = t.d.f29708c;
            PendingIntent pendingIntent = this.f1936h;
            if (pendingIntent == null) {
                return q(i10, t.f.f29738d, this.f1940l, t.b.f29703b, this.f1937i);
            }
            return q(i10, t.f.f29737c, this.f1940l, t.b.f29703b, pendingIntent);
        }

        @Override // androidx.core.app.k.j
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putInt("android.callType", this.f1933e);
            bundle.putBoolean("android.callIsVideo", this.f1938j);
            t tVar = this.f1934f;
            if (tVar != null) {
                if (Build.VERSION.SDK_INT >= 28) {
                    bundle.putParcelable("android.callPerson", c.b(tVar.j()));
                } else {
                    bundle.putParcelable("android.callPersonCompat", tVar.k());
                }
            }
            IconCompat iconCompat = this.f1941m;
            if (iconCompat != null) {
                bundle.putParcelable("android.verificationIcon", b.a(iconCompat.v(this.f1955a.f1907a)));
            }
            bundle.putCharSequence("android.verificationText", this.f1942n);
            bundle.putParcelable("android.answerIntent", this.f1935g);
            bundle.putParcelable("android.declineIntent", this.f1936h);
            bundle.putParcelable("android.hangUpIntent", this.f1937i);
            Integer num = this.f1939k;
            if (num != null) {
                bundle.putInt("android.answerColor", num.intValue());
            }
            Integer num2 = this.f1940l;
            if (num2 != null) {
                bundle.putInt("android.declineColor", num2.intValue());
            }
        }

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            CharSequence charSequence;
            int i10 = Build.VERSION.SDK_INT;
            CharSequence charSequence2 = null;
            r2 = null;
            Notification.CallStyle a10 = null;
            charSequence2 = null;
            if (i10 >= 31) {
                int i11 = this.f1933e;
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (Log.isLoggable("NotifCompat", 3)) {
                                Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(this.f1933e));
                            }
                        } else {
                            a10 = d.c(this.f1934f.j(), this.f1937i, this.f1935g);
                        }
                    } else {
                        a10 = d.b(this.f1934f.j(), this.f1937i);
                    }
                } else {
                    a10 = d.a(this.f1934f.j(), this.f1936h, this.f1935g);
                }
                if (a10 != null) {
                    a10.setBuilder(jVar.a());
                    Integer num = this.f1939k;
                    if (num != null) {
                        d.d(a10, num.intValue());
                    }
                    Integer num2 = this.f1940l;
                    if (num2 != null) {
                        d.e(a10, num2.intValue());
                    }
                    d.h(a10, this.f1942n);
                    IconCompat iconCompat = this.f1941m;
                    if (iconCompat != null) {
                        d.g(a10, iconCompat.v(this.f1955a.f1907a));
                    }
                    d.f(a10, this.f1938j);
                    return;
                }
                return;
            }
            Notification.Builder a11 = jVar.a();
            t tVar = this.f1934f;
            if (tVar != null) {
                charSequence = tVar.e();
            } else {
                charSequence = null;
            }
            a11.setContentTitle(charSequence);
            Bundle bundle = this.f1955a.E;
            if (bundle != null && bundle.containsKey("android.text")) {
                charSequence2 = this.f1955a.E.getCharSequence("android.text");
            }
            if (charSequence2 == null) {
                charSequence2 = o();
            }
            a11.setContentText(charSequence2);
            t tVar2 = this.f1934f;
            if (tVar2 != null) {
                if (tVar2.c() != null) {
                    b.b(a11, this.f1934f.c().v(this.f1955a.f1907a));
                }
                if (i10 >= 28) {
                    c.a(a11, this.f1934f.j());
                } else {
                    a.a(a11, this.f1934f.f());
                }
            }
            a.b(a11, "call");
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$CallStyle";
        }

        @Override // androidx.core.app.k.j
        protected void l(Bundle bundle) {
            Integer num;
            super.l(bundle);
            this.f1933e = bundle.getInt("android.callType");
            this.f1938j = bundle.getBoolean("android.callIsVideo");
            if (Build.VERSION.SDK_INT >= 28 && bundle.containsKey("android.callPerson")) {
                this.f1934f = t.a(m.a(bundle.getParcelable("android.callPerson")));
            } else if (bundle.containsKey("android.callPersonCompat")) {
                this.f1934f = t.b(bundle.getBundle("android.callPersonCompat"));
            }
            if (bundle.containsKey("android.verificationIcon")) {
                this.f1941m = IconCompat.b((Icon) bundle.getParcelable("android.verificationIcon"));
            } else if (bundle.containsKey("android.verificationIconCompat")) {
                this.f1941m = IconCompat.a(bundle.getBundle("android.verificationIconCompat"));
            }
            this.f1942n = bundle.getCharSequence("android.verificationText");
            this.f1935g = (PendingIntent) bundle.getParcelable("android.answerIntent");
            this.f1936h = (PendingIntent) bundle.getParcelable("android.declineIntent");
            this.f1937i = (PendingIntent) bundle.getParcelable("android.hangUpIntent");
            Integer num2 = null;
            if (bundle.containsKey("android.answerColor")) {
                num = Integer.valueOf(bundle.getInt("android.answerColor"));
            } else {
                num = null;
            }
            this.f1939k = num;
            if (bundle.containsKey("android.declineColor")) {
                num2 = Integer.valueOf(bundle.getInt("android.declineColor"));
            }
            this.f1940l = num2;
        }

        public ArrayList n() {
            a s10 = s();
            a r10 = r();
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(s10);
            ArrayList<a> arrayList2 = this.f1955a.f1908b;
            int i10 = 2;
            if (arrayList2 != null) {
                for (a aVar : arrayList2) {
                    if (aVar.j()) {
                        arrayList.add(aVar);
                    } else if (!p(aVar) && i10 > 1) {
                        arrayList.add(aVar);
                        i10--;
                    }
                    if (r10 != null && i10 == 1) {
                        arrayList.add(r10);
                        i10--;
                    }
                }
            }
            if (r10 != null && i10 >= 1) {
                arrayList.add(r10);
            }
            return arrayList;
        }
    }

    /* loaded from: classes.dex */
    public static class g extends j {

        /* loaded from: classes.dex */
        static class a {
            static Notification.Style a() {
                return new Notification.DecoratedCustomViewStyle();
            }
        }

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            jVar.a().setStyle(a.a());
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
        }

        @Override // androidx.core.app.k.j
        public RemoteViews i(androidx.core.app.j jVar) {
            return null;
        }

        @Override // androidx.core.app.k.j
        public RemoteViews j(androidx.core.app.j jVar) {
            return null;
        }

        @Override // androidx.core.app.k.j
        public RemoteViews k(androidx.core.app.j jVar) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class h extends j {

        /* renamed from: e  reason: collision with root package name */
        private ArrayList f1943e = new ArrayList();

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(jVar.a()).setBigContentTitle(this.f1956b);
            if (this.f1958d) {
                bigContentTitle.setSummaryText(this.f1957c);
            }
            Iterator it = this.f1943e.iterator();
            while (it.hasNext()) {
                bigContentTitle.addLine((CharSequence) it.next());
            }
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$InboxStyle";
        }

        @Override // androidx.core.app.k.j
        protected void l(Bundle bundle) {
            super.l(bundle);
            this.f1943e.clear();
            if (bundle.containsKey("android.textLines")) {
                Collections.addAll(this.f1943e, bundle.getCharSequenceArray("android.textLines"));
            }
        }

        public h n(CharSequence charSequence) {
            if (charSequence != null) {
                this.f1943e.add(e.f(charSequence));
            }
            return this;
        }

        public h o(CharSequence charSequence) {
            this.f1956b = e.f(charSequence);
            return this;
        }

        public h p(CharSequence charSequence) {
            this.f1957c = e.f(charSequence);
            this.f1958d = true;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        protected e f1955a;

        /* renamed from: b  reason: collision with root package name */
        CharSequence f1956b;

        /* renamed from: c  reason: collision with root package name */
        CharSequence f1957c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1958d = false;

        static j c(String str) {
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -716705180:
                        if (str.equals("androidx.core.app.NotificationCompat$DecoratedCustomViewStyle")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -171946061:
                        if (str.equals("androidx.core.app.NotificationCompat$BigPictureStyle")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 714386739:
                        if (str.equals("androidx.core.app.NotificationCompat$CallStyle")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 912942987:
                        if (str.equals("androidx.core.app.NotificationCompat$InboxStyle")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 919595044:
                        if (str.equals("androidx.core.app.NotificationCompat$BigTextStyle")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2090799565:
                        if (str.equals("androidx.core.app.NotificationCompat$MessagingStyle")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new g();
                    case 1:
                        return new b();
                    case 2:
                        return new f();
                    case 3:
                        return new h();
                    case 4:
                        return new c();
                    case 5:
                        return new i();
                    default:
                        return null;
                }
            }
            return null;
        }

        private static j d(String str) {
            if (str == null) {
                return null;
            }
            if (str.equals(Notification.BigPictureStyle.class.getName())) {
                return new b();
            }
            if (str.equals(Notification.BigTextStyle.class.getName())) {
                return new c();
            }
            if (str.equals(Notification.InboxStyle.class.getName())) {
                return new h();
            }
            if (str.equals(Notification.MessagingStyle.class.getName())) {
                return new i();
            }
            if (!str.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                return null;
            }
            return new g();
        }

        static j e(Bundle bundle) {
            j c10 = c(bundle.getString("androidx.core.app.extra.COMPAT_TEMPLATE"));
            if (c10 != null) {
                return c10;
            }
            if (!bundle.containsKey("android.selfDisplayName") && !bundle.containsKey("android.messagingStyleUser")) {
                if (!bundle.containsKey("android.picture") && !bundle.containsKey("android.pictureIcon")) {
                    if (bundle.containsKey("android.bigText")) {
                        return new c();
                    }
                    if (bundle.containsKey("android.textLines")) {
                        return new h();
                    }
                    if (bundle.containsKey("android.callType")) {
                        return new f();
                    }
                    return d(bundle.getString("android.template"));
                }
                return new b();
            }
            return new i();
        }

        static j f(Bundle bundle) {
            j e10 = e(bundle);
            if (e10 == null) {
                return null;
            }
            try {
                e10.l(bundle);
                return e10;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        public static j g(Notification notification) {
            Bundle a10 = k.a(notification);
            if (a10 == null) {
                return null;
            }
            return f(a10);
        }

        public void a(Bundle bundle) {
            if (this.f1958d) {
                bundle.putCharSequence("android.summaryText", this.f1957c);
            }
            CharSequence charSequence = this.f1956b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String h10 = h();
            if (h10 != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", h10);
            }
        }

        public abstract void b(androidx.core.app.j jVar);

        protected String h() {
            return null;
        }

        public RemoteViews i(androidx.core.app.j jVar) {
            return null;
        }

        public RemoteViews j(androidx.core.app.j jVar) {
            return null;
        }

        public RemoteViews k(androidx.core.app.j jVar) {
            return null;
        }

        protected void l(Bundle bundle) {
            if (bundle.containsKey("android.summaryText")) {
                this.f1957c = bundle.getCharSequence("android.summaryText");
                this.f1958d = true;
            }
            this.f1956b = bundle.getCharSequence("android.title.big");
        }

        public void m(e eVar) {
            if (this.f1955a != eVar) {
                this.f1955a = eVar;
                if (eVar != null) {
                    eVar.J(this);
                }
            }
        }
    }

    public static Bundle a(Notification notification) {
        return notification.extras;
    }

    public static Bitmap b(Context context, Bitmap bitmap) {
        if (bitmap != null && Build.VERSION.SDK_INT < 27) {
            Resources resources = context.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(t.c.f29705b);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(t.c.f29704a);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
            return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
        }
        return bitmap;
    }

    /* loaded from: classes.dex */
    public static class i extends j {

        /* renamed from: e  reason: collision with root package name */
        private final List f1944e = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        private final List f1945f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        private t f1946g;

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f1947h;

        /* renamed from: i  reason: collision with root package name */
        private Boolean f1948i;

        /* loaded from: classes.dex */
        static class a {
            static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addMessage(message);
            }

            static Notification.MessagingStyle b(CharSequence charSequence) {
                return new Notification.MessagingStyle(charSequence);
            }

            static Notification.MessagingStyle c(Notification.MessagingStyle messagingStyle, CharSequence charSequence) {
                return messagingStyle.setConversationTitle(charSequence);
            }
        }

        /* loaded from: classes.dex */
        static class b {
            static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addHistoricMessage(message);
            }
        }

        /* loaded from: classes.dex */
        static class c {
            static Notification.MessagingStyle a(Person person) {
                return new Notification.MessagingStyle(person);
            }

            static Notification.MessagingStyle b(Notification.MessagingStyle messagingStyle, boolean z10) {
                return messagingStyle.setGroupConversation(z10);
            }
        }

        /* loaded from: classes.dex */
        public static final class d {

            /* renamed from: a  reason: collision with root package name */
            private final CharSequence f1949a;

            /* renamed from: b  reason: collision with root package name */
            private final long f1950b;

            /* renamed from: c  reason: collision with root package name */
            private final t f1951c;

            /* renamed from: d  reason: collision with root package name */
            private Bundle f1952d = new Bundle();

            /* renamed from: e  reason: collision with root package name */
            private String f1953e;

            /* renamed from: f  reason: collision with root package name */
            private Uri f1954f;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes.dex */
            public static class a {
                static Notification.MessagingStyle.Message a(CharSequence charSequence, long j10, CharSequence charSequence2) {
                    return new Notification.MessagingStyle.Message(charSequence, j10, charSequence2);
                }

                static Notification.MessagingStyle.Message b(Notification.MessagingStyle.Message message, String str, Uri uri) {
                    return message.setData(str, uri);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes.dex */
            public static class b {
                static Parcelable a(Person person) {
                    return person;
                }

                static Notification.MessagingStyle.Message b(CharSequence charSequence, long j10, Person person) {
                    return new Notification.MessagingStyle.Message(charSequence, j10, person);
                }
            }

            public d(CharSequence charSequence, long j10, t tVar) {
                this.f1949a = charSequence;
                this.f1950b = j10;
                this.f1951c = tVar;
            }

            static Bundle[] a(List list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    bundleArr[i10] = ((d) list.get(i10)).l();
                }
                return bundleArr;
            }

            static d e(Bundle bundle) {
                t tVar;
                try {
                    if (bundle.containsKey("text") && bundle.containsKey(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME)) {
                        if (bundle.containsKey("person")) {
                            tVar = t.b(bundle.getBundle("person"));
                        } else if (bundle.containsKey("sender_person") && Build.VERSION.SDK_INT >= 28) {
                            tVar = t.a(m.a(bundle.getParcelable("sender_person")));
                        } else if (bundle.containsKey("sender")) {
                            tVar = new t.b().f(bundle.getCharSequence("sender")).a();
                        } else {
                            tVar = null;
                        }
                        d dVar = new d(bundle.getCharSequence("text"), bundle.getLong(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME), tVar);
                        if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                            dVar.j(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                        }
                        if (bundle.containsKey("extras")) {
                            dVar.d().putAll(bundle.getBundle("extras"));
                        }
                        return dVar;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            static List f(Parcelable[] parcelableArr) {
                d e10;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    if ((parcelable instanceof Bundle) && (e10 = e((Bundle) parcelable)) != null) {
                        arrayList.add(e10);
                    }
                }
                return arrayList;
            }

            private Bundle l() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f1949a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, this.f1950b);
                t tVar = this.f1951c;
                if (tVar != null) {
                    bundle.putCharSequence("sender", tVar.e());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", b.a(this.f1951c.j()));
                    } else {
                        bundle.putBundle("person", this.f1951c.k());
                    }
                }
                String str = this.f1953e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f1954f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f1952d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            public String b() {
                return this.f1953e;
            }

            public Uri c() {
                return this.f1954f;
            }

            public Bundle d() {
                return this.f1952d;
            }

            public t g() {
                return this.f1951c;
            }

            public CharSequence h() {
                return this.f1949a;
            }

            public long i() {
                return this.f1950b;
            }

            public d j(String str, Uri uri) {
                this.f1953e = str;
                this.f1954f = uri;
                return this;
            }

            Notification.MessagingStyle.Message k() {
                Notification.MessagingStyle.Message a10;
                t g10 = g();
                CharSequence charSequence = null;
                Person person = null;
                if (Build.VERSION.SDK_INT >= 28) {
                    CharSequence h10 = h();
                    long i10 = i();
                    if (g10 != null) {
                        person = g10.j();
                    }
                    a10 = b.b(h10, i10, person);
                } else {
                    CharSequence h11 = h();
                    long i11 = i();
                    if (g10 != null) {
                        charSequence = g10.e();
                    }
                    a10 = a.a(h11, i11, charSequence);
                }
                if (b() != null) {
                    a.b(a10, b(), c());
                }
                return a10;
            }
        }

        i() {
        }

        public static i o(Notification notification) {
            j g10 = j.g(notification);
            if (g10 instanceof i) {
                return (i) g10;
            }
            return null;
        }

        @Override // androidx.core.app.k.j
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f1946g.e());
            bundle.putBundle("android.messagingStyleUser", this.f1946g.k());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f1947h);
            if (this.f1947h != null && this.f1948i.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f1947h);
            }
            if (!this.f1944e.isEmpty()) {
                bundle.putParcelableArray("android.messages", d.a(this.f1944e));
            }
            if (!this.f1945f.isEmpty()) {
                bundle.putParcelableArray("android.messages.historic", d.a(this.f1945f));
            }
            Boolean bool = this.f1948i;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        @Override // androidx.core.app.k.j
        public void b(androidx.core.app.j jVar) {
            Notification.MessagingStyle b10;
            u(s());
            if (Build.VERSION.SDK_INT >= 28) {
                b10 = c.a(this.f1946g.j());
            } else {
                b10 = a.b(this.f1946g.e());
            }
            for (d dVar : this.f1944e) {
                a.a(b10, dVar.k());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                for (d dVar2 : this.f1945f) {
                    b.a(b10, dVar2.k());
                }
            }
            if (this.f1948i.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                a.c(b10, this.f1947h);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                c.b(b10, this.f1948i.booleanValue());
            }
            b10.setBuilder(jVar.a());
        }

        @Override // androidx.core.app.k.j
        protected String h() {
            return "androidx.core.app.NotificationCompat$MessagingStyle";
        }

        @Override // androidx.core.app.k.j
        protected void l(Bundle bundle) {
            super.l(bundle);
            this.f1944e.clear();
            if (bundle.containsKey("android.messagingStyleUser")) {
                this.f1946g = t.b(bundle.getBundle("android.messagingStyleUser"));
            } else {
                this.f1946g = new t.b().f(bundle.getString("android.selfDisplayName")).a();
            }
            CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
            this.f1947h = charSequence;
            if (charSequence == null) {
                this.f1947h = bundle.getCharSequence("android.hiddenConversationTitle");
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
            if (parcelableArray != null) {
                this.f1944e.addAll(d.f(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
            if (parcelableArray2 != null) {
                this.f1945f.addAll(d.f(parcelableArray2));
            }
            if (bundle.containsKey("android.isGroupConversation")) {
                this.f1948i = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
            }
        }

        public i n(d dVar) {
            if (dVar != null) {
                this.f1944e.add(dVar);
                if (this.f1944e.size() > 25) {
                    this.f1944e.remove(0);
                }
            }
            return this;
        }

        public CharSequence p() {
            return this.f1947h;
        }

        public List q() {
            return this.f1944e;
        }

        public t r() {
            return this.f1946g;
        }

        public boolean s() {
            e eVar = this.f1955a;
            if (eVar != null && eVar.f1907a.getApplicationInfo().targetSdkVersion < 28 && this.f1948i == null) {
                if (this.f1947h == null) {
                    return false;
                }
                return true;
            }
            Boolean bool = this.f1948i;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }

        public i t(CharSequence charSequence) {
            this.f1947h = charSequence;
            return this;
        }

        public i u(boolean z10) {
            this.f1948i = Boolean.valueOf(z10);
            return this;
        }

        public i(t tVar) {
            if (!TextUtils.isEmpty(tVar.e())) {
                this.f1946g = tVar;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }
    }

    /* loaded from: classes.dex */
    public static class e {
        boolean A;
        boolean B;
        boolean C;
        String D;
        Bundle E;
        int F;
        int G;
        Notification H;
        RemoteViews I;
        RemoteViews J;
        RemoteViews K;
        String L;
        int M;
        String N;
        long O;
        int P;
        int Q;
        boolean R;
        Notification S;
        boolean T;
        Object U;
        public ArrayList V;

        /* renamed from: a  reason: collision with root package name */
        public Context f1907a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList f1908b;

        /* renamed from: c  reason: collision with root package name */
        public ArrayList f1909c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList f1910d;

        /* renamed from: e  reason: collision with root package name */
        CharSequence f1911e;

        /* renamed from: f  reason: collision with root package name */
        CharSequence f1912f;

        /* renamed from: g  reason: collision with root package name */
        PendingIntent f1913g;

        /* renamed from: h  reason: collision with root package name */
        PendingIntent f1914h;

        /* renamed from: i  reason: collision with root package name */
        RemoteViews f1915i;

        /* renamed from: j  reason: collision with root package name */
        IconCompat f1916j;

        /* renamed from: k  reason: collision with root package name */
        CharSequence f1917k;

        /* renamed from: l  reason: collision with root package name */
        int f1918l;

        /* renamed from: m  reason: collision with root package name */
        int f1919m;

        /* renamed from: n  reason: collision with root package name */
        boolean f1920n;

        /* renamed from: o  reason: collision with root package name */
        boolean f1921o;

        /* renamed from: p  reason: collision with root package name */
        boolean f1922p;

        /* renamed from: q  reason: collision with root package name */
        j f1923q;

        /* renamed from: r  reason: collision with root package name */
        CharSequence f1924r;

        /* renamed from: s  reason: collision with root package name */
        CharSequence f1925s;

        /* renamed from: t  reason: collision with root package name */
        CharSequence[] f1926t;

        /* renamed from: u  reason: collision with root package name */
        int f1927u;

        /* renamed from: v  reason: collision with root package name */
        int f1928v;

        /* renamed from: w  reason: collision with root package name */
        boolean f1929w;

        /* renamed from: x  reason: collision with root package name */
        String f1930x;

        /* renamed from: y  reason: collision with root package name */
        boolean f1931y;

        /* renamed from: z  reason: collision with root package name */
        String f1932z;

        /* loaded from: classes.dex */
        static class a {
            static AudioAttributes a(AudioAttributes.Builder builder) {
                return builder.build();
            }

            static AudioAttributes.Builder b() {
                return new AudioAttributes.Builder();
            }

            static AudioAttributes.Builder c(AudioAttributes.Builder builder, int i10) {
                return builder.setContentType(i10);
            }

            static AudioAttributes.Builder d(AudioAttributes.Builder builder, int i10) {
                return builder.setUsage(i10);
            }
        }

        public e(Context context, String str) {
            this.f1908b = new ArrayList();
            this.f1909c = new ArrayList();
            this.f1910d = new ArrayList();
            this.f1920n = true;
            this.A = false;
            this.F = 0;
            this.G = 0;
            this.M = 0;
            this.P = 0;
            this.Q = 0;
            Notification notification = new Notification();
            this.S = notification;
            this.f1907a = context;
            this.L = str;
            notification.when = System.currentTimeMillis();
            this.S.audioStreamType = -1;
            this.f1919m = 0;
            this.V = new ArrayList();
            this.R = true;
        }

        protected static CharSequence f(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            if (charSequence.length() > 5120) {
                return charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }

        private void r(int i10, boolean z10) {
            if (z10) {
                Notification notification = this.S;
                notification.flags = i10 | notification.flags;
                return;
            }
            Notification notification2 = this.S;
            notification2.flags = (~i10) & notification2.flags;
        }

        public e A(boolean z10) {
            r(2, z10);
            return this;
        }

        public e B(boolean z10) {
            r(8, z10);
            return this;
        }

        public e C(int i10) {
            this.f1919m = i10;
            return this;
        }

        public e D(int i10, int i11, boolean z10) {
            this.f1927u = i10;
            this.f1928v = i11;
            this.f1929w = z10;
            return this;
        }

        public e E(String str) {
            this.N = str;
            return this;
        }

        public e F(boolean z10) {
            this.f1920n = z10;
            return this;
        }

        public e G(boolean z10) {
            this.T = z10;
            return this;
        }

        public e H(int i10) {
            this.S.icon = i10;
            return this;
        }

        public e I(Uri uri) {
            Notification notification = this.S;
            notification.sound = uri;
            notification.audioStreamType = -1;
            AudioAttributes.Builder d10 = a.d(a.c(a.b(), 4), 5);
            this.S.audioAttributes = a.a(d10);
            return this;
        }

        public e J(j jVar) {
            if (this.f1923q != jVar) {
                this.f1923q = jVar;
                if (jVar != null) {
                    jVar.m(this);
                }
            }
            return this;
        }

        public e K(CharSequence charSequence) {
            this.f1924r = f(charSequence);
            return this;
        }

        public e L(CharSequence charSequence) {
            this.S.tickerText = f(charSequence);
            return this;
        }

        public e M(long j10) {
            this.O = j10;
            return this;
        }

        public e N(boolean z10) {
            this.f1921o = z10;
            return this;
        }

        public e O(long[] jArr) {
            this.S.vibrate = jArr;
            return this;
        }

        public e P(int i10) {
            this.G = i10;
            return this;
        }

        public e Q(long j10) {
            this.S.when = j10;
            return this;
        }

        public e a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1908b.add(new a(i10, charSequence, pendingIntent));
            return this;
        }

        public e b(a aVar) {
            if (aVar != null) {
                this.f1908b.add(aVar);
            }
            return this;
        }

        public e c(a aVar) {
            if (aVar != null) {
                this.f1910d.add(aVar);
            }
            return this;
        }

        public Notification d() {
            return new n(this).c();
        }

        public Bundle e() {
            if (this.E == null) {
                this.E = new Bundle();
            }
            return this.E;
        }

        public e g(boolean z10) {
            r(16, z10);
            return this;
        }

        public e h(String str) {
            this.D = str;
            return this;
        }

        public e i(String str) {
            this.L = str;
            return this;
        }

        public e j(boolean z10) {
            this.f1922p = z10;
            e().putBoolean("android.chronometerCountDown", z10);
            return this;
        }

        public e k(int i10) {
            this.F = i10;
            return this;
        }

        public e l(boolean z10) {
            this.B = z10;
            this.C = true;
            return this;
        }

        public e m(PendingIntent pendingIntent) {
            this.f1913g = pendingIntent;
            return this;
        }

        public e n(CharSequence charSequence) {
            this.f1912f = f(charSequence);
            return this;
        }

        public e o(CharSequence charSequence) {
            this.f1911e = f(charSequence);
            return this;
        }

        public e p(int i10) {
            Notification notification = this.S;
            notification.defaults = i10;
            if ((i10 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public e q(PendingIntent pendingIntent) {
            this.S.deleteIntent = pendingIntent;
            return this;
        }

        public e s(PendingIntent pendingIntent, boolean z10) {
            this.f1914h = pendingIntent;
            r(128, z10);
            return this;
        }

        public e t(String str) {
            this.f1930x = str;
            return this;
        }

        public e u(int i10) {
            this.P = i10;
            return this;
        }

        public e v(boolean z10) {
            this.f1931y = z10;
            return this;
        }

        public e w(Bitmap bitmap) {
            IconCompat f10;
            if (bitmap == null) {
                f10 = null;
            } else {
                f10 = IconCompat.f(k.b(this.f1907a, bitmap));
            }
            this.f1916j = f10;
            return this;
        }

        public e x(int i10, int i11, int i12) {
            int i13;
            Notification notification = this.S;
            notification.ledARGB = i10;
            notification.ledOnMS = i11;
            notification.ledOffMS = i12;
            if (i11 != 0 && i12 != 0) {
                i13 = 1;
            } else {
                i13 = 0;
            }
            notification.flags = i13 | (notification.flags & (-2));
            return this;
        }

        public e y(boolean z10) {
            this.A = z10;
            return this;
        }

        public e z(int i10) {
            this.f1918l = i10;
            return this;
        }

        public e(Context context) {
            this(context, null);
        }
    }
}
