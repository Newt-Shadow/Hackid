package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f472a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f473b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence f474c;

    /* renamed from: d  reason: collision with root package name */
    private final CharSequence f475d;

    /* renamed from: e  reason: collision with root package name */
    private final Bitmap f476e;

    /* renamed from: f  reason: collision with root package name */
    private final Uri f477f;

    /* renamed from: g  reason: collision with root package name */
    private final Bundle f478g;

    /* renamed from: h  reason: collision with root package name */
    private final Uri f479h;

    /* renamed from: i  reason: collision with root package name */
    private MediaDescription f480i;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f481a;

        /* renamed from: b  reason: collision with root package name */
        private CharSequence f482b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f483c;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f484d;

        /* renamed from: e  reason: collision with root package name */
        private Bitmap f485e;

        /* renamed from: f  reason: collision with root package name */
        private Uri f486f;

        /* renamed from: g  reason: collision with root package name */
        private Bundle f487g;

        /* renamed from: h  reason: collision with root package name */
        private Uri f488h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f481a, this.f482b, this.f483c, this.f484d, this.f485e, this.f486f, this.f487g, this.f488h);
        }

        public b b(CharSequence charSequence) {
            this.f484d = charSequence;
            return this;
        }

        public b c(Bundle bundle) {
            this.f487g = bundle;
            return this;
        }

        public b d(Bitmap bitmap) {
            this.f485e = bitmap;
            return this;
        }

        public b e(Uri uri) {
            this.f486f = uri;
            return this;
        }

        public b f(String str) {
            this.f481a = str;
            return this;
        }

        public b g(Uri uri) {
            this.f488h = uri;
            return this;
        }

        public b h(CharSequence charSequence) {
            this.f483c = charSequence;
            return this;
        }

        public b i(CharSequence charSequence) {
            this.f482b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f472a = str;
        this.f473b = charSequence;
        this.f474c = charSequence2;
        this.f475d = charSequence3;
        this.f476e = bitmap;
        this.f477f = uri;
        this.f478g = bundle;
        this.f479h = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat a(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L76
            android.support.v4.media.MediaDescriptionCompat$b r1 = new android.support.v4.media.MediaDescriptionCompat$b
            r1.<init>()
            android.media.MediaDescription r8 = (android.media.MediaDescription) r8
            java.lang.String r2 = r8.getMediaId()
            r1.f(r2)
            java.lang.CharSequence r2 = r8.getTitle()
            r1.i(r2)
            java.lang.CharSequence r2 = r8.getSubtitle()
            r1.h(r2)
            java.lang.CharSequence r2 = r8.getDescription()
            r1.b(r2)
            android.graphics.Bitmap r2 = r8.getIconBitmap()
            r1.d(r2)
            android.net.Uri r2 = r8.getIconUri()
            r1.e(r2)
            android.os.Bundle r2 = r8.getExtras()
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L46
            android.support.v4.media.session.MediaSessionCompat.a(r2)
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L47
        L46:
            r4 = r0
        L47:
            if (r4 == 0) goto L5f
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L59
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L59
            goto L60
        L59:
            r2.remove(r3)
            r2.remove(r5)
        L5f:
            r0 = r2
        L60:
            r1.c(r0)
            if (r4 == 0) goto L69
            r1.g(r4)
            goto L70
        L69:
            android.net.Uri r0 = r8.getMediaUri()
            r1.g(r0)
        L70:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.a()
            r0.f480i = r8
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    public Object b() {
        MediaDescription mediaDescription = this.f480i;
        if (mediaDescription == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f472a);
            builder.setTitle(this.f473b);
            builder.setSubtitle(this.f474c);
            builder.setDescription(this.f475d);
            builder.setIconBitmap(this.f476e);
            builder.setIconUri(this.f477f);
            builder.setExtras(this.f478g);
            builder.setMediaUri(this.f479h);
            MediaDescription build = builder.build();
            this.f480i = build;
            return build;
        }
        return mediaDescription;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f473b) + ", " + ((Object) this.f474c) + ", " + ((Object) this.f475d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        ((MediaDescription) b()).writeToParcel(parcel, i10);
    }
}
